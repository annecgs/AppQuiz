import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget{
  final String title;
  
  Question(this.title);
  
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        title,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
    
  }
}