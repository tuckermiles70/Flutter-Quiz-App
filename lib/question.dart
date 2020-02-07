import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String
      questionText; //final just means that this value won't change after the inital initilization from constructor

  Question(this.questionText); //stores first argument in questionText

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //as much space as it can get on screen. So, full width of device
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
