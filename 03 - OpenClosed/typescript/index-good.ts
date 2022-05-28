interface PrintQuestion {
  printQuestionChoices(): void;
}

class BooleanQuestion implements PrintQuestion {
  description: string;
  constructor(description: string) {
    this.description = description
  }
  printQuestionChoices(): void {
    console.log('1. True')
    console.log('2. False')
  }
}

class MultpleChoiceQuestion implements PrintQuestion {
  description: string;
  options: Array<string>;

  constructor(description: string, options: Array<string>) {
    this.description = description
    this.options = options
  }
  printQuestionChoices(): void {
    this.options.forEach((option, index) => {
      console.log(`${index + 1}. ${option}`)
    })
  }
}

class TextQuestion implements PrintQuestion {
  description: string;
  constructor(description: string) {
    this.description = description
  }
  printQuestionChoices(): void {
    console.log('Answer: ___________________')
  }
}

class RangeQuestion implements PrintQuestion {
  description: string;

  constructor(description: string) {
    this.description = description;
  }
  printQuestionChoices(): void {
    console.log('Minimum: ________________')
    console.log('Maxium: ________________')
  }
}


function printQuiz(questions: (BooleanQuestion | MultpleChoiceQuestion | TextQuestion | RangeQuestion)[]): void {
  questions.forEach((question: (BooleanQuestion | MultpleChoiceQuestion | TextQuestion | RangeQuestion)): void => {
    console.log(question.description)
    question.printQuestionChoices()
    console.log('')
  });
}

const questions = [
  new BooleanQuestion('This video is useful'),
  new MultpleChoiceQuestion(
    'What is your favorite language',
    ['CSS', 'HTML', 'JS', 'Python'],
  ),
  new TextQuestion('Describe your favorite JS feature.'),
  new RangeQuestion('What is the speed in your city?')
]

printQuiz(questions)