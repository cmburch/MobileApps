import 'package:flutter/material.dart';
import 'package:flutter_demo/answer.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "what is your favorite color",
      "what is your favorite animal"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(children: [
          Question(
            questions[questionIndex],
          ),
          Answer(
            answerQuestion,
            "Answer 0",
          ),
          RaisedButton(
            child: Text("Answer 1"),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text("Answer 2"),
            onPressed: () => print("Answer question 2"),
          ),
          RaisedButton(
            child: Text("Answer 3"),
            onPressed: () => print("Answer question 3"),
          ),
        ]),
      ),
    );
  }
}
