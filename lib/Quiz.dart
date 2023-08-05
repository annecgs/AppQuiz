import 'package:flutter/cupertino.dart';
import './Questions.dart';
import './Response.dart';

class Quiz extends StatelessWidget{
  final List<Map<String,Object>> perguntas;
  final int response;
  final void Function(int pontos) toResponse;


  Quiz({
    required this.perguntas,
    required this.toResponse,
    required this.response,
});

  bool get selectQuestion {
    return response < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    var respostas = perguntas[response]['respostas'] as List;
    var pontos = perguntas[response]['pontuacao'] as List;

    return Column(
      children: <Widget>[
        Question(perguntas[response]['texto'] as String),
        ...respostas.map((t) => Response(t,
            () => toResponse(pontos[response]))).toList()

      ],
    );
  }

}