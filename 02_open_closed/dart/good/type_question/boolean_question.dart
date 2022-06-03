import 'print_question.dart';

class BooleanQuestion extends PrintQuestion {
  BooleanQuestion(super.description);

  void printQuestionChoices() {
    print('1. True');
    print('2. False');
  }
}
