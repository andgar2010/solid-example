import { PrintQuestion } from "./print_question.ts";

export class MultpleChoiceQuestion implements PrintQuestion {
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