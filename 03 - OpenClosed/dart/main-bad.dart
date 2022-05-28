void printQuiz(questions) {
  for (var question in questions) {
    print(question['description']);
    switch (question['type']) {
      case 'boolean':
        print('1. True');
        print('2. False');
        break;

      case 'multipleChoice':
        int index = 0;
        for (var item in question['options']) {
          print('${++index}. $item');
        }
        break;

      case 'text':
        print('Answer: ___________________');
        break;

      case 'range':
        print('Minimum: ________________');
        print('Maxium: ________________');
        break;
    }

    print('');
  }
}

const List<Map<String, Object>> questions = [
  {
    'type': 'boolean',
    'description': 'This video is useful',
  },
  {
    'type': 'multipleChoice',
    'description': 'What is your favorite language',
    'options': ['CSS', 'HTML', 'JS', 'Python'],
  },
  {
    'type': 'text',
    'description': 'Describe your favorite JS feature.',
  },
  {
    'type': 'range',
    'description': 'What is the speed in your city?',
  }
];

void main() {
  printQuiz(questions);
}
