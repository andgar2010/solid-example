function printQuiz(questions: any[]) {
  questions.forEach((
    question: { description: any; type: any; options: string[]; }) => {
    console.log(question.description)
    switch (question.type) {
      case 'boolean':
        console.log('1. True')
        console.log('2. False')
        break;
      case 'multipleChoice':
        question.options.forEach((option: string, index: number) => {
          console.log(`${index + 1}. ${option}`)
        })
        break;
      case 'text':
        console.log('Answer: ___________________')
        break;

      case 'range':
        console.log('Minimum: ________________')
        console.log('Maxium: ________________')
        break;
    }

    console.log('')

  });
}

const questions = [
  {
    type: 'boolean',
    description: 'This video is useful',
  },
  {
    type: 'multipleChoice',
    description: 'What is your favorite language',
    options: ['CSS', 'HTML', 'JS', 'Python'],
  },
  {
    type: 'text',
    description: 'Describe your favorite JS feature.'
  },
  {
    type: 'range',
    description: 'What is the speed in your city?'
  }
]

printQuiz(questions)