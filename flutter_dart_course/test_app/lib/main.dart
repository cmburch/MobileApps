import 'package:flutter/material.dart';

void main() {
  //runApp calls the build method and renders the widgets on the screen.
  runApp(MyApp()); //equivalent to new MyApp()
}

class MyApp extends StatelessWidget {
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
            RaisedButton(child: Text('Answer 1'), onPressed: null),
            RaisedButton(child: Text('Answer 2'), onPressed: null),
            RaisedButton(child: Text('Answer 3'), onPressed: null),
          ],
        ),
      ),
    ); //MaterialApp
  } //build
}
