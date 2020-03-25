import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tarefas_academicas/helpers/validacao.dart';
import 'package:tarefas_academicas/models/tarefas.dart';

Widget descricaoTarefa(
    _descricaoController, Tarefa _tarefa, Validacao _validar) {
  return Observer(
    builder: (_) => TextField(
      onChanged: (_) {
        _validar.descricao=true;
        _tarefa.userEdited = true;
      },
      controller: _descricaoController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          errorText: _validar.descricao ? null : "Campo obrigatório!",
          labelText: "Descrição",
          labelStyle: TextStyle(fontSize: 16)),
    ),
  );
}
