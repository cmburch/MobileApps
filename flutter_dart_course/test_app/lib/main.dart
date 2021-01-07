import 'package:flutter/material.dart';

void main() {
  //runApp calls the build method and renders the widgets on the screen.
  runApp(MyApp()); //equivalent to new MyApp()
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer choosen');
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
            Text('Questions ?'),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion),
            RaisedButton(child: Text('Answer 3'), onPressed: answerQuestion),
          ],
        ),
      ),
    ); //MaterialApp
  } //build
}
