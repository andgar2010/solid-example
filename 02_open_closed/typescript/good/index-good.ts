import {
  BooleanQuestion, MultpleChoiceQuestion, RangeQuestion, TextQuestion
} from "./type_question/type_question.ts"

function printQuiz (questions: (BooleanQuestion | MultpleChoiceQuestion | TextQuestion | RangeQuestion)[]): void {
  questions.forEach((question: (BooleanQuestion | MultpleChoiceQuestion | TextQuestion | RangeQuestion)): void => {
    console.log(question.description)
    question.printQuestionChoices()
    console.log('')
  })
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