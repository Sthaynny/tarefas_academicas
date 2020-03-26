import 'package:flutter/material.dart';

Widget textInfo(String title, String info) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "$title:",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      Padding(
        padding: EdgeInsets.only(left: 25, top: 5, bottom: 20),
        child: Text(
          info,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
        ),
      )
    ],
  );
}

Widget textInfoStatus(String title, String status, color, onPressed) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "$title:",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      Padding(
        padding: EdgeInsets.only(left: 25, top: 5, bottom: 20),
        child: RaisedButton(
            color: color,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(05)),
            child: Text(
              status,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
            onPressed: onPressed),
      )
    ],
  );
}


Widget textInfoPath(String title, String info) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "$title:",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      Padding(
        padding: EdgeInsets.only(left: 25, top: 5, bottom: 20),
        child: Text(
          info,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          maxLines: 1,
        ),
      )
    ],
  );
}
