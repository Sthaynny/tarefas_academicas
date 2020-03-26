import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tarefas_academicas/models/tarefas.dart';

import 'package:flutter/services.dart';

Widget textInput(String title, textController, onChanged, bool valid) {
  return TextField(
    onChanged: onChanged,
    controller: textController,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
        errorText: valid ? null : "Campo obrigatório!",
        labelText: title,
        labelStyle: TextStyle(fontSize: 16)),
  );
}

Widget textInputDecription(String title, textController, onChanged) {
  return Padding(
    padding: const EdgeInsets.only(top: 15.0),
    child: TextField(
      maxLines: 5,
      onChanged: onChanged,
      controller: textController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
          labelText: title,
          labelStyle: TextStyle(fontSize: 16)),
    ),
  );
}

Widget dataInput(context, Tarefa _tarefa) {
  return Padding(
    padding: const EdgeInsets.only(top: 15, bottom: 15),
    child: Observer(builder: (_) {
      return Row(
        children: <Widget>[
          Text(
            "Data: ",
            style: TextStyle(fontSize: 16),
          ),
          RaisedButton(
            color: Color.fromRGBO(255, 102, 66, 0.8),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Text(
              _tarefa.dataEntrega.isEmpty ? "dd/mm/aaaa" : _tarefa.dataEntrega,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
              maxLines: 1,
            ),
            onPressed: () {
              _tarefa.userEdited = true;
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2019),
                lastDate: DateTime(2050),
              ).then((data) {
                if (data != null) {
                  _tarefa.setData(data);
                }
              });
            },
          )
        ],
      );
    }),
  );
}

void pritGeral(Tarefa _tarefa) {
  print(_tarefa.titulo);
  print(_tarefa.descricao);
  print(_tarefa.dataEntrega);
  print(_tarefa.arquivoPath);
}

String _path = '...';

Widget pathInput(context, Tarefa _tarefa) {
  if (_tarefa.arquivoPath != null) {
    _tarefa.file = _tarefa.arquivoPath.split('/').last;
  } else {
    _tarefa.file = '';
  }
  return Padding(
    padding: const EdgeInsets.only(top: 10, bottom: 10),
    child: Row(
      children: <Widget>[
        Text(
          "Arquivo: ",
          style: TextStyle(fontSize: 16),
        ),
        Expanded(
            child: Observer(
          builder: (_) => RaisedButton(
            color: Color.fromRGBO(255, 102, 66, 0.8),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Text(
              _tarefa.file.isEmpty ? "Upload arquivo" : _tarefa.file,
              style: TextStyle(fontSize: 14, color: Colors.white),
              maxLines: 1,
            ),
            onPressed: () {
              _tarefa.userEdited = true;
              _openFileExplorer(_tarefa);
            },
          ),
        )),
      ],
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
