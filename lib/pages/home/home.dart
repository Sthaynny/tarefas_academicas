import 'package:flutter/material.dart';
import 'package:tarefas_academicas/helpers/controller.dart';
import 'package:tarefas_academicas/pages/addTarefa/addTarefa.dart';
import 'package:tarefas_academicas/pages/home/widgets/List.dart';
import 'package:tarefas_academicas/pages/home/widgets/bartop.dart';

class HomePage extends StatelessWidget {
  Controller _controller = Controller();

  @override
  Widget build(BuildContext context) {
    _controller.initList();
    Map<String, dynamic> newTarefa = Map();
    newTarefa["titulo"] = "Mobile";
    newTarefa["descricao"] = "Fazer um relatorio";
    newTarefa["dataEntrega"] = "20/02/2020";
    newTarefa["ok"] = false;
    _controller.toDoList.add(newTarefa);

    Map<String, dynamic> newTarefa2 = Map();
    newTarefa2["titulo"] = "Mobile2";
    newTarefa2["descricao"] = "Fazer um relatorio2";
    newTarefa2["dataEntrega"] = "20/02/2020";
    newTarefa2["ok"] = true;
    _controller.toDoList.add(newTarefa2);

    return Scaffold(
      appBar: barTop(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrangeAccent,
        child: Icon(Icons.note_add),
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => AddTarefa(_controller))
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: _controller.toDoList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                print(_controller.toDoList[index]["titulo"]);
              },
              child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: _controller.toDoList[index]["ok"]
                          ? Colors.green
                          : Colors.red,
                      child: Icon(
                        _controller.toDoList[index]["ok"]
                            ? Icons.check
                            : Icons.error_outline,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            _controller.toDoList[index]["titulo"],
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(_controller.toDoList[index]["dataEntrega"]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
