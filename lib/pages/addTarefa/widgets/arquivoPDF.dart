import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';

import 'package:tarefas_academicas/helpers/controller_data.dart';

import 'package:flutter_mobx/flutter_mobx.dart';

String _path = '...';

Widget arquivoTarefa(context, _contFile) {
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
                _contFile.file.isEmpty ? "Upload arquivo" : _contFile.file,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              onPressed: () {
                _openFileExplorer(_contFile);
              },
            ),
          )
        ],
      ),
    ),
  );
}

void _openFileExplorer(_contFile) async {
  try {
    _path = await FilePicker.getFilePath(
        type: FileType.custom, fileExtension: "pdf");
  } on PlatformException catch (e) {
    print("Unsupported operation" + e.toString());
  }

  _contFile.file = _path != null ? _path.split('/').last : '...';
}
