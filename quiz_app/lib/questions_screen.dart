import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState(){
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen>{
  var currentQuestionIndex = 0;

  void answerQuestion(){
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context){
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox( // Alternative to using center
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40), // top, bottom, left, right
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //MainAxisAlignment.spaceAround
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              // style: const TextStyle(
              //   color: Colors.white,
              // ),
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
      
            // ElevatedButton(
            //   onPressed: () {},
            //   child: const Text('Answer 1')
            // ),
              
            // AnswerButton(
            //   answerText: currentQuestion.answers[0],
            //  onTap: (){}
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[1], 
            //   onTap: (){}
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[2], 
            //   onTap: (){}
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[3], 
            //   onTap: (){}
            // ),
      
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answerText: answer, onTap: answerQuestion);
            }),
          ]
        ),
      ),
    );
  }
}