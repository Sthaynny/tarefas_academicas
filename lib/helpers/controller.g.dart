// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on ControllerBase, Store {
  final _$toDoListAtom = Atom(name: 'ControllerBase.toDoList');

  @override
  ObservableList<dynamic> get toDoList {
    _$toDoListAtom.context.enforceReadPolicy(_$toDoListAtom);
    _$toDoListAtom.reportObserved();
    return super.toDoList;
  }

  @override
  set toDoList(ObservableList<dynamic> value) {
    _$toDoListAtom.context.conditionallyRunInAction(() {
      super.toDoList = value;
      _$toDoListAtom.reportChanged();
    }, _$toDoListAtom, name: '${_$toDoListAtom.name}_set');
  }

  final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase');

  @override
  dynamic init() {
    final _$actionInfo = _$ControllerBaseActionController.startAction();
    try {
      return super.init();
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTarefas(Tarefa addTarefa) {
    final _$actionInfo = _$ControllerBaseActionController.startAction();
    try {
      return super.addTarefas(addTarefa);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deliteTarefa(dynamic context, int index) {
    final _$actionInfo = _$ControllerBaseActionController.startAction();
    try {
      return super.deliteTarefa(context, index);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void carregarList() {
    final _$actionInfo = _$ControllerBaseActionController.startAction();
    try {
      return super.carregarList();
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateList(int index, Tarefa addTarefa) {
    final _$actionInfo = _$ControllerBaseActionController.startAction();
    try {
      return super.updateList(index, addTarefa);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic saveRefresh() {
    final _$actionInfo = _$ControllerBaseActionController.startAction();
    try {
      return super.saveRefresh();
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'toDoList: ${toDoList.toString()}';
    return '{$string}';
  }
}
