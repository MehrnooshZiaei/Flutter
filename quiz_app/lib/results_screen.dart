import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget{
  const ResultsScreen(this.restartQuiz, {super.key, required this.choosenAnswers});

  final List<String> choosenAnswers;
  final void Function() restartQuiz;

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
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 22
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: restartQuiz,
              icon: const Icon(
                Icons.refresh_outlined,
                color: Colors.white,
              ),
              label: const Text(
                'Restart Quiz!',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}