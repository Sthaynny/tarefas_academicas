import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';

class PdfViewer extends StatelessWidget {
  String path;
  PdfViewer(this.path);


  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(
      path: path,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            tooltip: "Em breve",
            icon: Icon(Icons.share), 
            onPressed: (){

            }
            )
        ],
        title: Text("Arquivo atividade"),
        centerTitle: true,
      ),
    );
  }

}