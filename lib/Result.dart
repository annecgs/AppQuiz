import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget{

  final int pontucao;
  final void Function() reset;
  Result(this.pontucao,this.reset);

  String get value{
    return "Points: $pontucao";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            value,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
        onPressed: reset,
          child: Text(
              'Reiniciar?',
            style: TextStyle(fontSize: 18),
          ),
    ),
      ],

    );
  }
}