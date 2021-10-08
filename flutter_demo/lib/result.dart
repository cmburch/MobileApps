import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String inputText;

  Result(this.inputText);

  @override
  Widget build(BuildContext build) {
    return Center(
      child: Text(inputText),
    );
  }
}
