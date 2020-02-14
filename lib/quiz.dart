import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]
              ['questionText'], //accessing value of key questionText
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          //function gets executed for every element in answers list. had to "cast" of sorts becuase Dart couldn't infer enough here
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList() //list of widgets
      ],
    );
  }
}
