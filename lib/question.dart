import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;

  Question(this.questionText); //stores first argument in questionText

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}