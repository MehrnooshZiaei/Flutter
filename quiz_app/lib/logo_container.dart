import 'package:flutter/material.dart';

class LogoContainer extends StatelessWidget{
  void quizButton(){
    return null;
  } 

  @override
  Widget build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 250,
        ),
        const SizedBox(
          width: 30,
        ),
        const Padding(
          padding: EdgeInsets.all(40.0)
        ),
        const Text(
          "Learn Flutter The Fun Way!",
          style: TextStyle(
             color: Colors.white,
             fontSize: 20,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20.0)
        ),
        OutlinedButton(
          onPressed: quizButton,
          child: const Text(
            "Start Quiz",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          )
        )
      ]
    );
  }
}