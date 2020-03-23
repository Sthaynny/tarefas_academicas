import 'package:flutter/material.dart';

Widget descricaoTarefa(_descricaoController) {
  return TextField(
    controller: _descricaoController,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
        labelText: "Descrição", labelStyle: TextStyle(fontSize: 16)),
  );
}
