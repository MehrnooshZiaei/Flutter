class QuizQuestion{
  const QuizQuestion(this.text, this.answers);

  final String text; // Question Text
  final List<String> answers; // Asnwers List

  List<String> getShuffledAnswers(){
    final shuffledList = List.of(answers); // Make copy of a list 
    shuffledList.shuffle(); // Shuffle the list 
    return shuffledList;
  }
}