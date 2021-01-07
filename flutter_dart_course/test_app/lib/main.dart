import 'package:flutter/material.dart';

void main() {
  //runApp calls the build method and renders the widgets on the screen.
  runApp(MyApp()); //equivalent to new MyApp()
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //MaterialApp --> Scaffold --> [appBar: AppBar --> title:Text,body:Text]
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App')),
        body: Text('This is the default text'),
      ),
    ); //MaterialApp
  } //build
}
