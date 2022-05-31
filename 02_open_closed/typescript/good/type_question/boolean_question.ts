import { PrintQuestion } from "./print_question.ts";

export class BooleanQuestion implements PrintQuestion {
  description: string;
  constructor(description: string) {
    this.description = description
  }
  printQuestionChoices(): void {
    console.log('1. True')
    console.log('2. False')
  }
}