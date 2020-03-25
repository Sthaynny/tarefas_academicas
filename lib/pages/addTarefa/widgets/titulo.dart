import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tarefas_academicas/helpers/validacao.dart';
import 'package:tarefas_academicas/models/tarefas.dart';

Widget tituloTarefa(_tituloController, Tarefa _tarefa, Validacao _validar) {
  return Observer(
    builder: (_) => TextField(
      onChanged: (_) {
        _tarefa.userEdited = true;
        _validar.titulo = true;
      },
      controller: _tituloController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          errorText: _validar.titulo ? null : "Campo obrigatório!",
          labelText: "Titulo da Atividade",
          labelStyle: TextStyle(fontSize: 16)),
    ),
  );
}
