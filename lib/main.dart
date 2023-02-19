import 'package:cap2/class/ful.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cap 2',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home:( stateful()) //stateful()// const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}



