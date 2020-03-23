import 'package:flutter/material.dart';

Widget tituloTarefa(_tituloController) {
  return TextField(
    controller: _tituloController,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
        labelText: "Titulo da Atividade", labelStyle: TextStyle(fontSize: 16)),
  );
}
