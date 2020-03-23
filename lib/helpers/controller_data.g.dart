// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_data.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DataController on _DataControllerBase, Store {
  final _$newdataAtom = Atom(name: '_DataControllerBase.newdata');

  @override
  String get newdata {
    _$newdataAtom.context.enforceReadPolicy(_$newdataAtom);
    _$newdataAtom.reportObserved();
    return super.newdata;
  }

  @override
  set newdata(String value) {
    _$newdataAtom.context.conditionallyRunInAction(() {
      super.newdata = value;
      _$newdataAtom.reportChanged();
    }, _$newdataAtom, name: '${_$newdataAtom.name}_set');
  }

  final _$fileAtom = Atom(name: '_DataControllerBase.file');

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

  final _$_DataControllerBaseActionController =
      ActionController(name: '_DataControllerBase');

  @override
  void setdata(DateTime data) {
    final _$actionInfo = _$_DataControllerBaseActionController.startAction();
    try {
      return super.setdata(data);
    } finally {
      _$_DataControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setnamefile(dynamic _fileName) {
    final _$actionInfo = _$_DataControllerBaseActionController.startAction();
    try {
      return super.setnamefile(_fileName);
    } finally {
      _$_DataControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'newdata: ${newdata.toString()},file: ${file.toString()}';
    return '{$string}';
  }
}
