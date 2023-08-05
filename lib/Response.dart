import 'package:flutter/material.dart';

class Response extends StatelessWidget{
  final String texto;
  final void Function() onSelected;

  Response(this.texto, this.onSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onSelected,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            textStyle: TextStyle(color: Colors.white)
        ),
        child: Text(texto),
    )
    );
  }
}