import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

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
    return SizedBox( // Alternative to using center
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //MainAxisAlignment.spaceAround
          children: [
            const Text(
              'The Question...',
              style: TextStyle(
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
              answerText: 'Answer 1',
             onTap: (){}
            ),
            AnswerButton(
              answerText: 'Answer 2', 
              onTap: (){}
            ),
            AnswerButton(
              answerText: 'Answer 3', 
              onTap: (){}
            ),
            AnswerButton(
              answerText: 'Answer 4', 
              onTap: (){}
            ),
          ]
      ),
    );
  }
}