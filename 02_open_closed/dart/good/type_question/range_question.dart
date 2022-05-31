import 'print_question.dart';

class RangeQuestion extends PrintQuestion {
  RangeQuestion(super.description);

  void printQuestionChoices() {
    print('Minimum: ________________');
    print('Maxium: ________________');
  }
}
