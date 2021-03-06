import 'type_question/type_question.dart';

void printQuiz(List<PrintQuestion> questions) {
  questions.forEach((PrintQuestion question) {
    print(question.description);
    question.printQuestionChoices();
    print('');
  });
}

List<PrintQuestion> questions = <PrintQuestion>[
  BooleanQuestion('This video is useful'),
  MultpleChoiceQuestion(
    'What is your favorite language',
    ['CSS', 'HTML', 'JS', 'Python'],
  ),
  TextQuestion('Describe your favorite JS feature.'),
  RangeQuestion('What is the speed in your city?')
];

void main() {
  printQuiz(questions);
}
