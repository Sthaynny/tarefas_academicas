// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarefas.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Tarefa on _TarefaBase, Store {
  final _$tituloAtom = Atom(name: '_TarefaBase.titulo');

  @override
  String get titulo {
    _$tituloAtom.context.enforceReadPolicy(_$tituloAtom);
    _$tituloAtom.reportObserved();
    return super.titulo;
  }

  @override
  set titulo(String value) {
    _$tituloAtom.context.conditionallyRunInAction(() {
      super.titulo = value;
      _$tituloAtom.reportChanged();
    }, _$tituloAtom, name: '${_$tituloAtom.name}_set');
  }

  final _$descricaoAtom = Atom(name: '_TarefaBase.descricao');

  @override
  String get descricao {
    _$descricaoAtom.context.enforceReadPolicy(_$descricaoAtom);
    _$descricaoAtom.reportObserved();
    return super.descricao;
  }

  @override
  set descricao(String value) {
    _$descricaoAtom.context.conditionallyRunInAction(() {
      super.descricao = value;
      _$descricaoAtom.reportChanged();
    }, _$descricaoAtom, name: '${_$descricaoAtom.name}_set');
  }

  final _$dataEntregaAtom = Atom(name: '_TarefaBase.dataEntrega');

  @override
  String get dataEntrega {
    _$dataEntregaAtom.context.enforceReadPolicy(_$dataEntregaAtom);
    _$dataEntregaAtom.reportObserved();
    return super.dataEntrega;
  }

  @override
  set dataEntrega(String value) {
    _$dataEntregaAtom.context.conditionallyRunInAction(() {
      super.dataEntrega = value;
      _$dataEntregaAtom.reportChanged();
    }, _$dataEntregaAtom, name: '${_$dataEntregaAtom.name}_set');
  }

  final _$fileAtom = Atom(name: '_TarefaBase.file');

  @override
  String get file {
    _$fileAtom.context.enforceReadPolicy(_$fileAtom);
    _$fileAtom.reportObserved();
    return super.file;
  }

  @override
  set file(String value) {
    _$fileAtom.context.conditionallyRunInAction(() {
      super.file = value;
      _$fileAtom.reportChanged();
    }, _$fileAtom, name: '${_$fileAtom.name}_set');
  }

  final _$arquivoPathAtom = Atom(name: '_TarefaBase.arquivoPath');

  @override
  String get arquivoPath {
    _$arquivoPathAtom.context.enforceReadPolicy(_$arquivoPathAtom);
    _$arquivoPathAtom.reportObserved();
    return super.arquivoPath;
  }

  @override
  set arquivoPath(String value) {
    _$arquivoPathAtom.context.conditionallyRunInAction(() {
      super.arquivoPath = value;
      _$arquivoPathAtom.reportChanged();
    }, _$arquivoPathAtom, name: '${_$arquivoPathAtom.name}_set');
  }

  final _$statusAtom = Atom(name: '_TarefaBase.status');

  @override
  bool get status {
    _$statusAtom.context.enforceReadPolicy(_$statusAtom);
    _$statusAtom.reportObserved();
    return super.status;
  }

  @override
  set status(bool value) {
    _$statusAtom.context.conditionallyRunInAction(() {
      super.status = value;
      _$statusAtom.reportChanged();
    }, _$statusAtom, name: '${_$statusAtom.name}_set');
  }

  final _$_TarefaBaseActionController = ActionController(name: '_TarefaBase');

  @override
  dynamic setTitulo(String value) {
    final _$actionInfo = _$_TarefaBaseActionController.startAction();
    try {
      return super.setTitulo(value);
    } finally {
      _$_TarefaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDescricao(String value) {
    final _$actionInfo = _$_TarefaBaseActionController.startAction();
    try {
      return super.setDescricao(value);
    } finally {
      _$_TarefaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setData(DateTime value) {
    final _$actionInfo = _$_TarefaBaseActionController.startAction();
    try {
      return super.setData(value);
    } finally {
      _$_TarefaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPath(String value) {
    final _$actionInfo = _$_TarefaBaseActionController.startAction();
    try {
      return super.setPath(value);
    } finally {
      _$_TarefaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setStatus(bool value) {
    final _$actionInfo = _$_TarefaBaseActionController.startAction();
    try {
      return super.setStatus(value);
    } finally {
      _$_TarefaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic fromMap() {
    final _$actionInfo = _$_TarefaBaseActionController.startAction();
    try {
      return super.fromMap();
    } finally {
      _$_TarefaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'titulo: ${titulo.toString()},descricao: ${descricao.toString()},dataEntrega: ${dataEntrega.toString()},file: ${file.toString()},arquivoPath: ${arquivoPath.toString()},status: ${status.toString()}';
    return '{$string}';
  }
}
