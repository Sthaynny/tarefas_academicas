import 'package:flutter/material.dart';

Widget iconEdited() {
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
        Icons.border_color,
        color: Colors.orange,
        size: 80,
      ),
    ),
  );
}
