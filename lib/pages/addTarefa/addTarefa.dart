import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tarefas_academicas/helpers/validacao.dart';
import 'package:tarefas_academicas/models/tarefas.dart';
import 'package:tarefas_academicas/pages/addTarefa/widgets/titulo.dart';
import 'package:tarefas_academicas/pages/addTarefa/widgets/descricao.dart';
import 'package:tarefas_academicas/pages/addTarefa/widgets/dataTarefa.dart';
import 'package:tarefas_academicas/pages/addTarefa/widgets/arquivoPDF.dart';
import 'package:tarefas_academicas/pages/addTarefa/widgets/will_pop.dart';

class AddTarefa extends StatelessWidget {
  Validacao _validar = Validacao();
  Tarefa _tarefa = Tarefa();
  final _tituloController = TextEditingController();
  final _descricaoController = TextEditingController();
  bool _userEdited = false;

  @override
  Widget build(BuildContext context) {
    _tarefa.userEdited = false;
    return WillPopScope(
      onWillPop: () {
        return requestPop(context, _tarefa.userEdited);
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Adicionar  Atividade"),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.save),
          backgroundColor: Colors.deepOrange,
          onPressed: () {
            _tarefa.setTitulo(_tituloController.text);
            _tarefa.setDescricao(_descricaoController.text);
            _tarefa.setStatus(false);
            
                                       print("path salvo:"+_tarefa.arquivoPath.toString());
            if (_validar.validarCampo(_tarefa)) {
              Navigator.pop(context, _tarefa);
            }
          },
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        //fit: BoxFit.cover,
                        image: AssetImage("images/addTarefa.png"))),
              ),
              tituloTarefa(_tituloController, _tarefa, _validar),
              descricaoTarefa(_descricaoController, _tarefa, _validar),
              dataTarefa(
                context,
                _tarefa,
              ),
              arquivoTarefa(context, _tarefa),
            ],
          ),
        ),
      ),
    );
  }
}
