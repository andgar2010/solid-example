mixin FlyingBird {
  void fly() {
    print('I ${this.runtimeType} can fly');
  }
}

mixin SwimingBrid {
  void swim() {
    print('I ${this.runtimeType} can swim');
  }
}

class Duck with SwimingBrid, FlyingBird {
  void quack() {
    print('I ${this.runtimeType} can quack');
  }
}

class Penguin with SwimingBrid {}

void makeFlyingBirdFly(FlyingBird bird) {
  bird.fly();
}

void makeSwimingBirdSwim(SwimingBrid bird) {
  bird.swim();
}

void main(List<String> args) {
  var duck = Duck();
  var penguin = Penguin();

  makeFlyingBirdFly(duck);
  makeSwimingBirdSwim(duck);
  makeSwimingBirdSwim(penguin);
}
