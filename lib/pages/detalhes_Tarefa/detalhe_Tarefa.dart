import 'package:flutter/material.dart';
import 'package:tarefas_academicas/helpers/controller.dart';
import 'package:tarefas_academicas/models/tarefas.dart';
import 'package:tarefas_academicas/pages/detalhes_Tarefa/widgets/floatButton.dart';
import 'package:tarefas_academicas/pages/detalhes_Tarefa/widgets/icon_detalhes.dart';
import 'package:tarefas_academicas/pages/detalhes_Tarefa/widgets/info_tarefa.dart';
import 'package:tarefas_academicas/pages/detalhes_Tarefa/widgets/topBar.dart';
import 'package:tarefas_academicas/pages/edited_tarefa/edited_tarefa.dart';
import 'package:tarefas_academicas/pages/pdfView/pdf_view.dart';

class Detalhes extends StatelessWidget {
  Controller _controller;
  int _index;
  Tarefa _tarefa = Tarefa();

  Detalhes({controller, index}) {
    _controller = controller;
    _index = index;
  }

  //_controller.toDoList[_index]["titulo"]
  @override
  Widget build(BuildContext context) {
    _createTarefa();
    return Scaffold(
      appBar: topBar(),
      floatingActionButton: floatButton(() async {
        var aux = await Navigator.push(context,
            MaterialPageRoute(builder: (context) => EditedTarefa(_tarefa)));
      }),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            iconDetalhes(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  textInfo("Titulo", _tarefa.titulo),
                  textInfo("Descrição", _tarefa.descricao),
                  textInfo("Data de entraga", _tarefa.dataEntrega),
                  textInfoStatus(
                      "Status",
                      _tarefa.status ? "Finalizado" : "Ativa",
                      _tarefa.status ? Colors.green : Colors.red),
                  textInfoPath(
                      "Arquivo",
                      _tarefa.arquivoPath == null
                          ? "Não foi Inserido arquivo"
                          : _tarefa.arquivoPath),
                  _tarefa.arquivoPath != null
                      ? RaisedButton(
                          color: Colors.deepOrangeAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(05)),
                          child: Text(
                            "Abrir o arquivo",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PDFScreen(
                                          path: _tarefa.arquivoPath,
                                        )));
                          },
                        )
                      : Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _createTarefa() {
    _tarefa.titulo = _controller.toDoList[_index]["titulo"];
    _tarefa.descricao = _controller.toDoList[_index]["descricao"];
    _tarefa.dataEntrega = _controller.toDoList[_index]["dataEntrega"];
    _tarefa.arquivoPath = _controller.toDoList[_index]["path"];
    _tarefa.status = _controller.toDoList[_index]["ok"];
  }
}
