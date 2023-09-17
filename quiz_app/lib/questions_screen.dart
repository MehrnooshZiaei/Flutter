import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState(){
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen>{

  void screenQuestions(){
    setState(() {
      
    });
  }

  @override
  Widget build(context){
    final currentQuestion = questions[0];

    return SizedBox( // Alternative to using center
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //MainAxisAlignment.spaceAround
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: const Text('Answer 1')
            // ),
            AnswerButton(
              answerText: currentQuestion.answers[0],
             onTap: (){}
            ),
            AnswerButton(
              answerText: currentQuestion.answers[1], 
              onTap: (){}
            ),
            AnswerButton(
              answerText: currentQuestion.answers[2], 
              onTap: (){}
            ),
            AnswerButton(
              answerText: currentQuestion.answers[3], 
              onTap: (){}
            ),
          ]
      ),
    );
  }
}