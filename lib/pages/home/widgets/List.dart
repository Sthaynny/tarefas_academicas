import 'package:flutter/material.dart';
import 'package:tarefas_academicas/helpers/controller.dart';

const String title = "tilulo";


Widget listBuild(contex, index){
  Controller _controller = Controller();
  return Container(
    child: Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            child: Icon(_controller.toDoList[index]["ok"]? Icons.check: Icons.error_outline),
          ),
          Column(
            children: <Widget>[
              Text(
                _controller.toDoList[index][title],
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Text(
                _controller.toDoList[index]["dataEntrega"],
                style: TextStyle(fontSize: 14),
              )
            ],
          )
        ],
      ),
      ),
  );
}