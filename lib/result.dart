import 'package:flutter/material.dart';


class Result extends StatelessWidget
{
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase{
    String resultText;
    if (resultScore <= 8)
    {
      resultText = 'Você é muito inocente';
    }
    else if(resultScore <= 12)
    {
      resultText = 'Você é Normal!';
    }
    else if(resultScore <= 16)
    {
      resultText = 'Você é estranho!';
    }
    else
      {
        resultText = 'Você é malvado';
      }
    return resultText;
  }

  Widget build(BuildContext context)
  {
    return Center(
      child: Column(
          children: <Widget>[
              Text(resultPhrase,
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,),
              FlatButton(
                child: Text('Reiniciar o teste!'),
                textColor: Colors.deepPurple,
                onPressed:resetHandler,
              ),
          ],

      ),
    );
  }
}