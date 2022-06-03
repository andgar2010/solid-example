class CalorieTracker {
  constructor(maxCalories: number) {
    this.maxCalories = maxCalories
    this.currentCalories = 0
  }
  maxCalories: number
  currentCalories: number

  trackCalories (calorieCount: number): void {
    this.currentCalories += calorieCount
    if (this.currentCalories >= this.maxCalories) {
      this.logCalorieSurplus()
    }
  }
  logCalorieSurplus (): void { // This bad method on class
    console.log('Max calories exceeded');
  }
}

const calorieTracker = new CalorieTracker(2000);
calorieTracker.trackCalories(500);
calorieTracker.trackCalories(1000);
calorieTracker.trackCalories(700);