// ignore_for_file: prefer_const_constructors 
// ignore_for_file: prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

class Buttons extends StatelessWidget {

  final Function(String) changeJokeIndex;

  const Buttons({required this.changeJokeIndex});

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: FloatingActionButton(
            onPressed: (){
              changeJokeIndex("prev");
            },
            backgroundColor: Colors.orange,
            child: Icon(
              Icons.arrow_back_rounded,
              size: 35,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: FloatingActionButton(
            onPressed: (){changeJokeIndex("next");},
            backgroundColor: Colors.orange,
            child: Icon(
              Icons.arrow_forward_rounded,
              size: 35,
            ),
          ),
        ),
      ],
    );
  }
}