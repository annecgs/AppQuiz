
import 'package:flutter/material.dart';
import './Quiz.dart';
import './Result.dart';

main() => runApp(Questions());

class _QuestionsState extends State<Questions>{

  var _response = 0;
  var _totalPontos = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas':['Preto','Vermelho','Verde','Amarelo'],
      'pontuacao':[10,15,20,25],
      /*'respostas': [
          {'texto':'Preto','pontuacao':10},
          {'texto':'Vermelho','pontuacao':15},
          {'texto':'Verde','pontuacao':20},
          {'texto':'Amarelo','pontuacao':25}
      ],*/
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas':['Coelho','Cobra','Elefante','Leão'],
      'pontuacao':[10,15,20,25],
      /*'respostas': [
          {'texto':'Coelho','pontuacao':10},
          {'texto':'Cobra','pontuacao':15},
          {'texto':'Elefante','pontuacao':20},
          {'texto':'Leão','pontuacao':25}
      ],*/
    }
  ];


  void _toResponse(int pontos){
    if(selectQuestion){
      setState(() {
        _response++;
        _totalPontos += pontos;
      });
    }
  }

  void _resetQuiz(){
    setState(() {
      _response=0;
      _totalPontos =0;
    });
  }

  bool get selectQuestion {
    return _response < _perguntas.length;
  }

  @override
  Widget build(BuildContext context){

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Perguntas"),
            ),
            body: selectQuestion ? Quiz(perguntas: _perguntas, toResponse: _toResponse, response: _response)  : Result(_totalPontos,_resetQuiz),
        ),
    );
  }
}


class Questions extends StatefulWidget{

  _QuestionsState createState(){
    return _QuestionsState();
  }
}
