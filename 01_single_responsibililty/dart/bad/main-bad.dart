class CalorieTracker {
  CalorieTracker(int maxCalories) {
    this.maxCalories = maxCalories;
    this.currentCalories = 0;
  }
  late int maxCalories;
  late int currentCalories;

  void trackCalories(int calorieCount) {
    this.currentCalories += calorieCount;
    if (this.currentCalories >= this.maxCalories) {
      this.logCalorieSurplus();
    }
  }

  void logCalorieSurplus() { // This bad method on class
    print('Max calories exceeded');
  }
}

void main(List<String> args) {
  CalorieTracker calorieTracker = CalorieTracker(2000);
  calorieTracker.trackCalories(500);
  calorieTracker.trackCalories(1000);
  calorieTracker.trackCalories(700);
}
