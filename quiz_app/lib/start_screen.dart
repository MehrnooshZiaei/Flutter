import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  StartScreen({super.key});

  @override
  Widget build(context){
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min, // It will take as minimal size as needed
        children: [
          // Image.asset(
          //   'assets/images/quiz-logo.png',
          //   width: 300,
          // ),

          // Way 1 to make a picture transparent

          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),

          // Way 2 to make a picture transparent

          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),

          const SizedBox(
            height: 80,
          ),
          const Text(
            "Learn Flutter The Fun Way!",
            style: TextStyle(
               color: Color.fromARGB(255, 237, 223, 252),
               fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: (){},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(
              Icons.arrow_right_alt
            ),
            label: const Text(
              "Start Quiz",
            ),
          )
        ]
      ),
    );
  }
}