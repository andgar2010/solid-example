abstract class PrintQuestion {
  PrintQuestion(this.description);

  final String description;

  void printQuestionChoices();
}

class BooleanQuestion extends PrintQuestion {
  BooleanQuestion(super.description);

  void printQuestionChoices() {
    print('1. True');
    print('2. False');
  }
}

class MultpleChoiceQuestion extends PrintQuestion {
  MultpleChoiceQuestion(super.description, this.options);

  final List<String> options;

  void printQuestionChoices() {
    this.options.toList().asMap().forEach((int index, String option) {
      print('${index + 1}. $option');
    });
  }
}

class TextQuestion extends PrintQuestion {
  TextQuestion(super.description);

  void printQuestionChoices() {
    print('Answer: ___________________');
  }
}

class RangeQuestion extends PrintQuestion {
  RangeQuestion(super.description);

  void printQuestionChoices() {
    print('Minimum: ________________');
    print('Maxium: ________________');
  }
}

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
