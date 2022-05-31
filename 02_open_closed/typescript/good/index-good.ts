import { BooleanQuestion } from "./type_question/boolean_question.ts";
import { MultpleChoiceQuestion } from "./type_question/multple_choice_question.ts";
import { RangeQuestion } from "./type_question/range_question.ts";
import { TextQuestion } from "./type_question/text_question.ts";

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