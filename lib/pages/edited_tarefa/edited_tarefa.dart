import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tarefas_academicas/globalWidgets/floatingButton.dart';
import 'package:tarefas_academicas/globalWidgets/input.dart';
import 'package:tarefas_academicas/globalWidgets/will_pop.dart';
import 'package:tarefas_academicas/helpers/validacao.dart';
import 'package:tarefas_academicas/models/tarefas.dart';
import 'package:tarefas_academicas/pages/edited_tarefa/widgets/icon_edited.dart';
import 'package:tarefas_academicas/pages/edited_tarefa/widgets/topBarEdited.dart';

class EditedTarefa extends StatelessWidget {
  Validacao _validar = Validacao();
  Tarefa _tarefa = Tarefa();
  final _textController = TextEditingController();
  final _descriptionController = TextEditingController();
  EditedTarefa(this._tarefa);

  @override
  Widget build(BuildContext context) {
    _validar.titulo = true;
    _carregarController();
    return WillPopScope(
      onWillPop: () => requestPopNotModified(context, _tarefa),
      child: Scaffold(
        appBar: topBarEdited(),
        floatingActionButton: floatingButton(Icons.save, () {
          if (_textController.text.isNotEmpty)
            Navigator.pop(context, _tarefa);
          else {
            _validar.titulo = false;
          }
        }),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              iconEdited(),
              Observer(
                builder: (_) =>
                    textInput("Titulo da Atividade", _textController, (value) {
                  _validar.titulo = true;
                  _tarefa.titulo = value;
                  _tarefa.userEdited = true;
                }, _validar.titulo),
              ),
              textInputDecription("Descrição", _descriptionController, (value) {
                _tarefa.descricao = value;
                _tarefa.userEdited = true;
              }),
              dataInput(context, _tarefa),
              pathInput(context, _tarefa),
            ],
          ),
        ),
      ),
    );
  }

  void _carregarController() {
    _textController.text = _tarefa.titulo;
    _descriptionController.text = _tarefa.descricao;
    _tarefa.userEdited = false;
  }
}
