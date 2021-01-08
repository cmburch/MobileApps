import 'package:flutter/material.dart';

void main() {
  //runApp calls the build method and renders the widgets on the screen.
  runApp(MyApp()); //equivalent to new MyApp()
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
    // print('Answer choosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite food',
      'What is the name of your dog'
    ];
    //MaterialApp --> Scaffold --> [appBar: AppBar --> title:Text,body:Text]
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App')),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion),
            RaisedButton(child: Text('Answer 3'), onPressed: answerQuestion),
          ],
        ),
      ),
    ); //MaterialApp
  } //build
}
