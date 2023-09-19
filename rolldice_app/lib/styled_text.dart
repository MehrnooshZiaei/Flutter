import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  //StyledText(String text, {super.key}): text = text;
  const StyledText(this.text, {super.key}); //Variable name should be same with class variable

  final String text; 

  @override
  Widget build(context){
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}