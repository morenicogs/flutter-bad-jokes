// ignore_for_file: prefer_const_constructors 
// ignore_for_file: prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'package:todo/buttons.dart';
import "./question.dart";
import "./answer.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  var jokes = [
    {"question": "What does a baby computer call its father?", "answer": "Data"},
    {"question": "What's a pencil with two erasers called?", "answer": "Pointless"},
    {"question": "Why is the calendar always scared?", "answer": "Because it's days are numbered"},
    {"question": "What do you call a fish with no eye", "answer": "Fsh"},
  ];
  
  var jokeIndex = 0;

  changeJokeIndex(String direction){
    if(direction == "next"){ 
      if(jokeIndex != jokes.length - 1){
        setState(() {
          jokeIndex ++;  
        });
      } else {
        setState(() {
          jokeIndex = 0;
        });
      }
    } else if(direction == "prev"){
      if(jokeIndex != 0){
        setState(() {
          jokeIndex --;  
        });
      } else {
        setState(() {
          jokeIndex = jokes.length - 1;
        });
      }
    }
  }

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Question(question: jokes[jokeIndex]["question"] as String),
              Answer(answer: jokes[jokeIndex]["answer"] as String),
              Buttons(changeJokeIndex: changeJokeIndex)
            ],
          ),
        ),
      ),
    );
  }

}