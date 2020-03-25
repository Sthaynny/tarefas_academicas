import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarefas_academicas/helpers/controller.dart';
import 'package:tarefas_academicas/pages/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Controller>(
          create: (_) => Controller(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.deepOrangeAccent,
        ),
        home: HomePage(),
      ),
    );
  }
}
