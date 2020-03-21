import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tarefas_academicas/helpers/controller.dart';

class AddTarefa extends StatelessWidget {
  Controller _controller;

  AddTarefa(this._controller);
  @override
  Widget build(BuildContext context) {
    print(_controller.toDoList[0]["titulo"]);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Adicionar  Atividade"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              //Colocar imagem redonda
              
              
              
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Titulo da Atividade",
                labelStyle: TextStyle(fontSize: 16)
              ),
            )
          ],
        ),
      ),
    );
  }
}
