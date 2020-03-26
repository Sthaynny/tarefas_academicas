import 'package:flutter/material.dart';


Widget floatingButton(icon, Function onPressed){
  return FloatingActionButton(
    onPressed: onPressed,
    backgroundColor: Colors.deepOrangeAccent,
    child: Icon(icon, color: Colors.white,),
  );
}