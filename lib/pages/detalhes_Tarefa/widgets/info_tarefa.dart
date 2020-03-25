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

Widget textInfoStatus(String title, String info, color) {
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
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: color),
        ),
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
