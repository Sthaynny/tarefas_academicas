import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:tarefas_academicas/models/tarefas.dart';
part 'validacao.g.dart';

class Validacao = _ValidacaoBase with _$Validacao;

abstract class _ValidacaoBase with Store {
  @observable
  bool titulo = true;

  @observable
  bool descricao = true;

  @observable
  bool dataEntrega = true;

  void _verificar( Tarefa _tarefa) {
    if (_tarefa.titulo.isEmpty) {
      titulo = false;
    }
    if (_tarefa.descricao.isEmpty) {
      descricao = false;
    } 
    
  }

  @action
  bool validarCampo(Tarefa _tarefa) {
    _verificar( _tarefa);
    if (_tarefa.titulo.isNotEmpty &&
        _tarefa.descricao.isNotEmpty ) {
      return true;
    }
    return false;
  }
}
