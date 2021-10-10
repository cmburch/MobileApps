import 'package:flutter/material.dart';
import 'package:quiz_app_1/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  const Quiz({
    Key? key,
    required this.questionIndex,
    required this.answerQuestion,
    required this.questions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        )
      ],
    );
  }
}
