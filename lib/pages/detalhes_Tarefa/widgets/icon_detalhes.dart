import 'package:flutter/material.dart';

Widget iconDetalhes() {
  return Padding(
    padding: EdgeInsets.only(bottom: 15,),
    child: Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.description,
        color: Colors.orange,
        size: 80,
      ),
    ),
  );
}
