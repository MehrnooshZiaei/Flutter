import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key, required this.choosenAnswers});

  final List<String> choosenAnswers;

  List<Map<String, Object>> getSummaryData(){
  
    final List<Map<String, Object>> summary = [];
    
    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0], // The first answer is always the right one and we do not shuffle them
        'user_answer': choosenAnswers[i]
      });
    }

    return summary;
  }
  
  @override
  Widget build(BuildContext context){
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length; // The amount of items that kept in this filtered list

    // for (var i = 0; i < questions.length ; i++) {
    //   if (summaryData[i]['user_answer'] == summaryData[i]['correct_answer']) numCorrectQuestions++;
    // }

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answer $numCorrectQuestions out of $numTotalQuestions questions correctly!',
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: (){},
              child: const Text('Restart The Quiz!')
            ),
          ],
        ),
      ),
    );
  }
}