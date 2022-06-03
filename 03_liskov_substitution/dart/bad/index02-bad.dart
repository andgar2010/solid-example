class Bird {
  void fly() {
    print('I can fly');
  }
}

class Duck extends Bird {
  void quack() {
    print('I can quack');
  }
}

class Penguin extends Bird {
  void fly() {
    throw Exception('Cannot fly');
  }

  void swim() {
    print('I can swim');
  }
}

makeBird(Bird bird) {
  bird.fly();
}

void main(List<String> args) {
  var duck = Duck();
  var penguin = Penguin();

  makeBird(duck);
  makeBird(penguin);
}
