import 'package:flutter/material.dart';
import 'package:quiz_app_1/quiz.dart';
import 'package:quiz_app_1/result.dart';

// void main() => runApp(const QuizApp());

// class QuizApp extends StatefulWidget {
//   const QuizApp({Key? key}) : super(key: key);

//   @override
//   State<StatefulWidget> createState() {
//     return QuizAppState();
//   }
// }

// class QuizAppState extends State<QuizApp> {
//   static const String _appTitle = "Quiz App";
//   int _questionIndex = 0;
//   int _score = 0;
//   final _questions = const [
//     {
//       'questionText': 'What\'s your favorite color?',
//       'answers': [
//         {'text': 'Black', 'score': 10},
//         {'text': 'Red', 'score': 5},
//         {'text': 'Green', 'score': 3},
//         {'text': 'White', 'score': 1},
//       ],
//     },
//     {
//       'questionText': 'What\'s your favorite animal?',
//       'answers': [
//         {'text': 'Rabbit', 'score': 3},
//         {'text': 'Snake', 'score': 11},
//         {'text': 'Elephant', 'score': 5},
//         {'text': 'Lion', 'score': 9},
//       ],
//     },
//     {
//       'questionText': 'Who\'s your favorite instructor?',
//       'answers': [
//         {'text': 'Teacher', 'score': 1},
//         {'text': 'Teacher', 'score': 1},
//         {'text': 'Teacher', 'score': 1},
//         {'text': 'Teacher', 'score': 1},
//       ],
//     },
//   ];

//   void _answerQuestion(int score) {
//     setState(() {
//       _questionIndex += 1;
//       _score += score;
//     });
//   }

//   void _resetQuiz() {
//     setState(() {
//       _questionIndex = 0;
//       _score = 0;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final bool _isQuizFinished = _questionIndex >= _questions.length;

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Container(
//             alignment: Alignment.center,
//             width: double.infinity,
//             child: const Text(_appTitle),
//           ),
//         ),
//         body: !_isQuizFinished
//             ? Quiz(
//                 answerQuestion: _answerQuestion,
//                 questions: _questions,
//                 questionIndex: _questionIndex,
//               )
//             : Result(_score, _resetQuiz),
//       ),
//     );
//   }
// }

void main() => runApp(const QuizApp());

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return QuizAppState();
  }
}

class QuizAppState extends State<QuizApp> {
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
  static const _appTitle = "Quiz App";
  int _questionIndex = 0;
  int _score = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _score += score;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
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
