import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:tarefas_academicas/helpers/controller.dart';
import 'package:tarefas_academicas/models/tarefas.dart';
import 'package:tarefas_academicas/pages/addTarefa/addTarefa.dart';
import 'package:tarefas_academicas/pages/detalhes_Tarefa/detalhe_Tarefa.dart';
import 'package:tarefas_academicas/pages/home/widgets/bartop.dart';
import 'package:tarefas_academicas/pages/home/widgets/dimiss_background.dart';

class HomePage extends StatelessWidget {
  Controller _controller = Controller();
  Tarefa _tarefa;
  @override
  Widget build(BuildContext context) {
    _controller.init();
    _controller.carregarList();

    return Scaffold(
      appBar: barTop(),
      floatingActionButton: FloatingActionButton(
        tooltip: "Adicionar Atividade",
        backgroundColor: Colors.deepOrangeAccent,
        child: Icon(Icons.note_add),
        onPressed: () async {
          var aux = await Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddTarefa()));
          if (aux != null) {
            _tarefa = aux;
            resp(_tarefa);
          }
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Observer(
          builder: (_) => ListView.builder(
            itemCount: _controller.toDoList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Dismissible(
                  direction: DismissDirection.startToEnd,
                  key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
                  background: dissBackground(),
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
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Text(
                                _controller.toDoList[index]["titulo"],
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(_controller.toDoList[index]["dataEntrega"]),
                          ],
                        ),
                      ),
                    ],
                  ),
                  onDismissed: (direction) {
                    _controller.deliteTarefa(context, index);
                  },
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Detalhes(
                                controller: _controller,
                                index: index,
                              )));
                },
              );
            },
          ),
        ),
      ),
    );
  }

  void resp(Tarefa _tarefa) {
    if (Tarefa != null) _controller.addTarefas(_tarefa);
  }
}
/*GestureDetector(
                onTap: () {
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
              )*/
