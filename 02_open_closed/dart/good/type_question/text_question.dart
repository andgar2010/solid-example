import 'print_question.dart';

class TextQuestion extends PrintQuestion {
  TextQuestion(super.description);

  void printQuestionChoices() {
    print('Answer: ___________________');
  }
}
