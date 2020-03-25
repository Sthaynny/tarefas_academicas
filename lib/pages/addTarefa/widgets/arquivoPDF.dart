import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tarefas_academicas/models/tarefas.dart';

String _path = '...';

Widget arquivoTarefa(context, Tarefa _tarefa) {
  _tarefa.file='';
  _tarefa.dataEntrega='';
  return Padding(
    padding: const EdgeInsets.only(top: 10, bottom: 10),
    child: Observer(
      builder: (_) => Row(
        children: <Widget>[
          Text(
            "Arquivo: ",
            style: TextStyle(fontSize: 16),
          ),
          Expanded(
            child: RaisedButton(
              color: Colors.black12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Text(
                _tarefa.file.isEmpty ? "Upload arquivo" : _tarefa.file,
                style: TextStyle(fontSize: 14, color: Colors.white),
                maxLines: 1,
              ),
              onPressed: () {
                _openFileExplorer(_tarefa);
              },
            ),
          )
        ],
      ),
    ),
  );
}

Future<String> _openFileExplorer(Tarefa _contFile) async {
  try {
    _path = await FilePicker.getFilePath(
        type: FileType.custom, fileExtension: "pdf");
  } on PlatformException catch (e) {
    print("Unsupported operation" + e.toString());
    return '';
  }

  _contFile.file = _path != null ? _path.split('/').last : '...';
  _contFile.arquivoPath = _path;
  return _path;
}
