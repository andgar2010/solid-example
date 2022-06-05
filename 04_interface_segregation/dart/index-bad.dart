abstract class Entity {
  late int attackDamage;
  late int health;
  late String name;

  void move();
  void attack(Entity targetEntity);
  void takeDamage(int amount);
}

class Character implements Entity {
  Character(this.name, this.attackDamage, this.health);

  int attackDamage;
  int health;
  String name;

  move() {
    print('${this.name} moved');
  }

  attack(Entity targetEntity) {
    print(
      '${this.name} attacked ${targetEntity.name} for ${this.attackDamage} damage',
    );
    targetEntity.takeDamage(this.attackDamage);
  }

  takeDamage(int amount) {
    this.health -= amount;
    print('${this.name} has ${this.health} health remaining');
  }
}

class Turret implements Entity {
  Turret(this.name, this.attackDamage);

  String name;
  int attackDamage;
  late int health;

  attack(Entity targetEntity) {
    print(
      '${this.name} attacked ${targetEntity.name} for ${this.attackDamage} damage',
    );
    targetEntity.takeDamage(this.attackDamage);
  }

  move() {
    throw Exception("Method not implemented.");
  }

  takeDamage(int amount) {
    throw Exception("Method not implemented.");
  }
}

class Wall implements Entity {
  Wall(this.name, this.health);

  late int attackDamage;
  int health;
  String name;

  move() {
    throw Exception("Method not implemented.");
  }

  attack(Entity targetEntity) {
    throw Exception("Method not implemented.");
  }

  takeDamage(int amount) {
    this.health -= amount;
    print('${this.name} has ${this.health} health remaining');
  }
}

void main(List<String> args) {
  var turret = Turret('Turret', 5);
  var character = Character('Character', 3, 100);
  var wall = Wall('Wall', 200);

  turret.attack(character);
  character.move();
  character.attack(wall);
  turret.attack(character);
}
