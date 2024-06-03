import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';
import 'package:quiz_app/quizescree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: home(),
    );
  }
}
