import 'package:flutter/material.dart';

Future<bool> requestPop(BuildContext context,bool value){
  if(value){
    showDialog(
      context: context,
      builder: (context){
          return AlertDialog(
            title: Text("Descartar alterações?"),
            content:Text("Caso sair as informações serão perdidas"),
            actions: <Widget>[
              FlatButton(
                  child: Text("Cancelar"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                FlatButton(
                  child: Text("Sim"),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context,null);
                  },
                ),
            ],
          );
      }

    );
    return Future.value(false);
  }else{
    return Future.value(true);
  }
}