import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetQuiz;

  Result(this.score,this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Your Quiz score is : $score",
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
            ),
            onPressed: resetQuiz,
            child: const Text(
              "Resart Quiz!",
            ),
          )
        ],
      ),
    );
  }
}
