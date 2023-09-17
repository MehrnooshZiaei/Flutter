import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget{
  Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
// Override our own initialization logic - extra ini

  // Way 1 - Using initState()
  // Widget? activeScreen;
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  // Way 2 - Using Ternary Expression
  var activeScreen = 'start-screen';
  void switchScreen(){
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context){
    // var screenWidget = StartScreen(switchScreen);
// way 2    
    // final screenWidget = activeScreen == 'start-screen' ? StartScreen(switchScreen) : const QuestionsScreen();
// way 3    
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
            colors: [ 
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168), 
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
// way 1        
          // child: activeScreen == 'start-screen' ? StartScreen(switchScreen) : const QuestionsScreen(), // Adding Ternary Expression
          child: screenWidget,
        ), 
      ),
    );
  }
}