// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validacao.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Validacao on _ValidacaoBase, Store {
  final _$tituloAtom = Atom(name: '_ValidacaoBase.titulo');

  @override
  bool get titulo {
    _$tituloAtom.context.enforceReadPolicy(_$tituloAtom);
    _$tituloAtom.reportObserved();
    return super.titulo;
  }

  @override
  set titulo(bool value) {
    _$tituloAtom.context.conditionallyRunInAction(() {
      super.titulo = value;
      _$tituloAtom.reportChanged();
    }, _$tituloAtom, name: '${_$tituloAtom.name}_set');
  }

  final _$descricaoAtom = Atom(name: '_ValidacaoBase.descricao');

  @override
  bool get descricao {
    _$descricaoAtom.context.enforceReadPolicy(_$descricaoAtom);
    _$descricaoAtom.reportObserved();
    return super.descricao;
  }

  @override
  set descricao(bool value) {
    _$descricaoAtom.context.conditionallyRunInAction(() {
      super.descricao = value;
      _$descricaoAtom.reportChanged();
    }, _$descricaoAtom, name: '${_$descricaoAtom.name}_set');
  }

  final _$dataEntregaAtom = Atom(name: '_ValidacaoBase.dataEntrega');

  @override
  bool get dataEntrega {
    _$dataEntregaAtom.context.enforceReadPolicy(_$dataEntregaAtom);
    _$dataEntregaAtom.reportObserved();
    return super.dataEntrega;
  }

  @override
  set dataEntrega(bool value) {
    _$dataEntregaAtom.context.conditionallyRunInAction(() {
      super.dataEntrega = value;
      _$dataEntregaAtom.reportChanged();
    }, _$dataEntregaAtom, name: '${_$dataEntregaAtom.name}_set');
  }

  final _$_ValidacaoBaseActionController =
      ActionController(name: '_ValidacaoBase');

  @override
  bool validarCampo(Tarefa _tarefa) {
    final _$actionInfo = _$_ValidacaoBaseActionController.startAction();
    try {
      return super.validarCampo(_tarefa);
    } finally {
      _$_ValidacaoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'titulo: ${titulo.toString()},descricao: ${descricao.toString()},dataEntrega: ${dataEntrega.toString()}';
    return '{$string}';
  }
}
