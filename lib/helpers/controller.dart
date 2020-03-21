 import 'dart:convert';
 import 'dart:io';

import 'package:mobx/mobx.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tarefas_academicas/models/tarefas.dart';
part 'controller.g.dart';
// run termiinal: flutter pub run build_runner build
 class Controller = ControllerBase with _$Controller;

 abstract class ControllerBase with Store{

  @observable
  List toDoList;

  Future<File> _getFile() async {
    final directory = await getApplicationDocumentsDirectory();
    return File("${directory.path}/atividades.json");
  }

  Future<File> _saveData()async{
    String data = json.encode(toDoList);
    final file = await _getFile();
    return file.writeAsString(data);
  }

  Future<String> _readData() async {
    try {
      final file = await _getFile();
      return file.readAsString();
    } catch (e) {
      return null;
    }
  }

  @action
  void addTarefas(TarefasAcademicas addTarefa){
    Map<String, dynamic> newTarefa = Map();
    newTarefa["titulo"] = addTarefa.titulo;
    newTarefa["descricao"] = addTarefa.descricao;
    newTarefa["dataEntrega"] = "${addTarefa.dataFinal.day}/${addTarefa.dataFinal.month}/${addTarefa.dataFinal.year}";
    newTarefa["ok"] = false;
    toDoList.add(newTarefa);
    _saveData();
  }
  
  @action
  void initList(){
    toDoList = [];
  }

  @action
  void carregarList(){
    _readData().then((data){
      toDoList = json.decode(data);
    });
  }


 }