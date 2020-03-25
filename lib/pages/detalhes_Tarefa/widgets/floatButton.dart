import 'package:flutter/material.dart';

Widget floatButton(onPressed){
  return FloatingActionButton(onPressed: onPressed,
  backgroundColor: Colors.deepOrangeAccent,
  child: Icon(Icons.edit),

  );
}