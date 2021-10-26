import 'package:flutter/material.dart';

// class Answer extends StatelessWidget {
//   final String answerText;
//   final VoidCallback answerQuestion;

//   Answer(this.answerText, this.answerQuestion);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           primary: Colors.blue,
//           onPrimary: Colors.white
//         ),
//         child: Text(answerText),
//         onPressed: answerQuestion,
//       ),
//     );
//   }
// }

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback answerQuestion;
  const Answer(this.answerText, this.answerQuestion);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
        onPressed: answerQuestion,
      ),
    );
  }
}
