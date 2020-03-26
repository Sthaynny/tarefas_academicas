import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tarefas_academicas/globalWidgets/input.dart';
import 'package:tarefas_academicas/globalWidgets/will_pop.dart';
import 'package:tarefas_academicas/helpers/validacao.dart';
import 'package:tarefas_academicas/models/tarefas.dart';
import 'package:tarefas_academicas/pages/addTarefa/widget/barTop.dart';

class AddTarefa extends StatelessWidget {
  Validacao _validar = Validacao();
  Tarefa _tarefa = Tarefa();
  final _tituloController = TextEditingController();
  final _descricaoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    initTarefa();
    _validar.titulo = true;
    _tarefa.userEdited = false;
    return WillPopScope(
      onWillPop: () {
        return requestPop(context, _tarefa.userEdited);
      },
      child: Scaffold(
        appBar: barTopAddTarefa(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.save),
          backgroundColor: Colors.deepOrange,
          onPressed: () {
            _tarefa.setTitulo(_tituloController.text);
            _tarefa.setDescricao(_descricaoController.text);
            _tarefa.setStatus(false);
            if (_tarefa.titulo.isNotEmpty) {
              Navigator.pop(context, _tarefa);
            } else {
              _validar.titulo = false;
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
              Observer(
                builder: (_) => textInput("Titulo", _tituloController, (value) {
                  _validar.titulo = true;
                  _tarefa.titulo = value;
                  _tarefa.userEdited = true;
                }, _validar.titulo),
              ),
              textInputDecription("Descrição", _descricaoController, (value) {
                _tarefa.descricao = value;
                _tarefa.userEdited = true;
              }),
              dataInput(context, _tarefa),
              pathInput(context, _tarefa),
            ],
          ),
        ),
      ),
    );
  }
  
  initTarefa(){
    _tarefa.titulo='';
    _tarefa.file='';
    _tarefa.descricao='';
    _tarefa.arquivoPath='';
    _tarefa.dataEntrega='';
    _tarefa.status=false;
    _tarefa.userEdited=false;
  }
}
