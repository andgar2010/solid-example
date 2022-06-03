import { PrintQuestion } from "./print_question.ts";

export class TextQuestion implements PrintQuestion {
  description: string
  constructor(description: string) {
    this.description = description
  }
  printQuestionChoices (): void {
    console.log('Answer: ___________________')
  }
}