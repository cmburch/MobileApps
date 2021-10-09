import 'package:flutter/material.dart';

void main() => runApp(const QuizApp());

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return QuizAppState();
  }
}

class QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(),);
  }
}
