import { PrintQuestion } from "./print_question.ts";

export class RangeQuestion implements PrintQuestion {
  description: string;

  constructor(description: string) {
    this.description = description;
  }
  printQuestionChoices(): void {
    console.log('Minimum: ________________')
    console.log('Maxium: ________________')
  }
}
