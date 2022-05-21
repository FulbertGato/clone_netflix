import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix clone ',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const Text("CECI EST UN TEXT")
    );
  }
}

