import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

Widget dataTarefa(context, _contData) {
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
            color: Colors.black12,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            child: Text(
              
              _contData.newdata.isEmpty ? "dd/mm/aaaa" : _contData.newdata,
              style: TextStyle(fontSize: 14, color: Colors.white,),
              maxLines: 1,
            ),
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2019),
                lastDate: DateTime(2050),
              ).then((data) {
                _contData.setdata(data);
              });
            },
          )
        ],
      );
    }),
  );
}
