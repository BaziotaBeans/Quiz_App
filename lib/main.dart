import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() =>runApp(MyApp());


class MyApp extends StatefulWidget
{
  State<StatefulWidget> createState()
  {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>
{
  final _questions = const [
    {
      'perguntaIndex':'Qual é a sua cor favorita?',
      'respotas' :
      [
        {'texto':'Preto', 'pontuacao':10},
        {'texto':'Azul','pontuacao':8},
        {'texto':'Vermelho','pontuacao':7},
        {'texto':'Amarelo','pontuacao':5},
        {'texto':'Laranja','pontucao':3},
        {'texto':'Branco','pontuacao':0}
        ],
    },
    {
      'perguntaIndex':'Qual é o seu animal favorito?',
      'respotas' :
      [
        {'texto':'Leão', 'pontuacao':10},
        {'texto':'Serpente','pontuacao':8},
        {'texto':'Crocodilo','pontuacao':7},
        {'texto':'Elefante','pontuacao':2},
        {'texto':'Cão','pontucao':0},
        {'texto':'Coelho','pontuacao':0}
      ],
    },
    {
      'perguntaIndex':'Qual é seu estilo de livro',
      'respotas' :
      [
        {'texto':'Romance', 'pontuacao':10},
        {'texto':'Drama','pontuacao':8},
        {'texto':'Suspense','pontuacao':7},
        {'texto':'Aventura','pontuacao':5},
      ],
    }
  ];
  int _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz()
  {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });

  }

  void _answerQuestion(int score)
  {
    if(_questionIndex < _questions.length)
    {

    }
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }
  Widget build(BuildContext context)
  {


      return MaterialApp
        (
          home: Scaffold(
            appBar: AppBar(
              title: Text('Meu primeiro App', textAlign: TextAlign.center, style: TextStyle(fontSize: 40),),
              backgroundColor: Colors.deepPurple,
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                  )
                : Result(_totalScore, _resetQuiz),
          ),
      );
  }
}