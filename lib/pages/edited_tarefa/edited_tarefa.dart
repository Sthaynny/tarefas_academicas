import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tarefas_academicas/models/tarefas.dart';
import 'package:tarefas_academicas/pages/edited_tarefa/widgets/icon_edited.dart';
import 'package:tarefas_academicas/pages/edited_tarefa/widgets/topBarEdited.dart';

class EditedTarefa extends StatelessWidget {
  Tarefa _tarefa = Tarefa();
  final _textController = TextEditingController();
  EditedTarefa(this._tarefa);

  @override
  Widget build(BuildContext context) {
    _carregarController();
    return Scaffold(
      appBar: topBarEdited(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            iconEdited(),
            TextField(
              onChanged: (_) {},
              controller: _textController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Titulo da Atividade",
                  labelStyle: TextStyle(fontSize: 16)),
            ),
            TextField(
              onChanged: (_) {},
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Descrição", labelStyle: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }

  void _carregarController() {
    _textController.text = _tarefa.titulo;
  }
}
