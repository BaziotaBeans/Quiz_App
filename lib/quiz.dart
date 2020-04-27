import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget
{
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex
      });

  Widget build(BuildContext context)
  {
    return Column(
      children: [
        Question(
            questions[questionIndex]['perguntaIndex']
        ),
        ...(questions[questionIndex]['respotas'] as List<Map<String, Object>>).map((answer){
          return Answer(()=> answerQuestion(answer['pontuacao']), answer['texto']);
        }).toList()
      ],
    );
  }
}