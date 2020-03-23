import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tarefas_academicas/helpers/controller.dart';
import 'package:tarefas_academicas/helpers/controller_data.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tarefas_academicas/pages/addTarefa/widgets/titulo.dart';
import 'package:tarefas_academicas/pages/addTarefa/widgets/descricao.dart';
import 'package:tarefas_academicas/pages/addTarefa/widgets/dataTarefa.dart';
import 'package:tarefas_academicas/pages/addTarefa/widgets/arquivoPDF.dart';

class AddTarefa extends StatelessWidget {
  Controller _controller;
  DataController _contPage= DataController();
  final _tituloController = TextEditingController();
  final _descricaoController = TextEditingController();

  AddTarefa(this._controller);
  @override
  Widget build(BuildContext context) {
    print(_controller.toDoList[0]["titulo"]);
    _contPage.newdata = "";
    _contPage.file ='';

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Adicionar  Atividade"),
        backgroundColor: Colors.deepOrangeAccent,
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
            tituloTarefa(_tituloController),
            descricaoTarefa(_descricaoController),
            dataTarefa(context, _contPage),
            arquivoTarefa(context, _contPage),

          ],
        ),
      ),
    );
  }


  

}
