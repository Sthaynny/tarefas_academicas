import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tarefas_academicas/models/tarefas.dart';
part 'controller.g.dart';

// run termiinal: flutter pub run build_runner build
class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  ObservableList toDoList;

  @action
  init() {
    toDoList = [].asObservable();
  }

  Future<File> _getFile() async {
    final directory = await getApplicationDocumentsDirectory();
    return File("${directory.path}/tarefasAcademicas.json");
  }

  Future<File> _saveData() async {
    String data = json.encode(toDoList);
    final file = await _getFile();
    return file.writeAsString(data);
  }

  Future<String> _readData() async {
    try {
      var file = await _getFile();
      return file.readAsString();
    } catch (e) {
      return null;
    }
  }

  @action
  void addTarefas(Tarefa addTarefa) {
    Map<String, dynamic> newTarefa = Map();
    newTarefa["titulo"] = addTarefa.titulo;
    newTarefa["descricao"] = addTarefa.descricao;
    newTarefa["dataEntrega"] = addTarefa.dataEntrega;
    newTarefa["path"] = addTarefa.arquivoPath;
    newTarefa["ok"] = addTarefa.status;
    toDoList.add(newTarefa);
    _saveData();
  }

  @action
  void deliteTarefa(context,int index) {
    var _removed = toDoList[index];
    int _posicao = index;
    toDoList.removeAt(index);
    _saveData();
    final snack = SnackBar(
      content: Text("Tarefa \"${_removed["titulo"]}\" removida!"),
      duration: Duration(seconds: 3),
      action: SnackBarAction(
          label: "Desfazer",
          onPressed: () {
            toDoList.insert(_posicao, _removed);
            _saveData();
          }),
    );

    Scaffold.of(context).showSnackBar(snack);
  }

  @action
  void carregarList() {
    _readData().then((data) {
      if (data != null) {
        toDoList.addAll(json.decode(data));
      }
    });
  }
}
