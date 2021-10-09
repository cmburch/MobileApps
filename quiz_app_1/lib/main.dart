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
  static const String _appTitle = "Quiz App";
  final int _questionIndex = 0;
  final int _score = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Teacher', 'score': 1},
        {'text': 'Teacher', 'score': 1},
        {'text': 'Teacher', 'score': 1},
        {'text': 'Teacher', 'score': 1},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    final bool _isQuizFinished = _questionIndex >= _questions.length;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            alignment: Alignment.center,
            width: double.infinity,
            child: const Text(_appTitle),
          ),
        ),
      ),
    );
  }
}
