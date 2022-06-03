import 'print_question.dart';

class MultpleChoiceQuestion extends PrintQuestion {
  MultpleChoiceQuestion(super.description, this.options);

  final List<String> options;

  void printQuestionChoices() {
    this.options.toList().asMap().forEach((int index, String option) {
      print('${index + 1}. $option');
    });
  }
}
