// ignore_for_file: prefer_const_constructors 
// ignore_for_file: prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

class Question extends StatelessWidget {

  final String question;
  
  Question({required this.question});

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(25),
      child: Text(
        question,
        style: TextStyle(
          fontSize: 27.5,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}