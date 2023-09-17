import 'package:flutter/material.dart';

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
              'The Question',
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Answer 1')
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Answer 2')
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Answer 3')
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Answer 4')
            ),
          ],
      ),
    );
  }
}