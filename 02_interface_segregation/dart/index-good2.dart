abstract class Entity {
  Entity(this.name);

  String name;
}

mixin Mover on Entity {
  external void move();
}

mixin Attacker on Entity {
  late final int attackDamage;

  external void attack(Entity targetEntity);
}

mixin HasHealth on Entity {
  late int health;

  external void takeDamage(int amount);
}

void printTakeDamage(int amount, objectThis) {
  objectThis.health -= amount;
  print('${objectThis.name} has ${objectThis.health} health remaining');
}

void printAttack(targetEntity, attacker) {
  print(
      '${attacker.name} attacked ${targetEntity.name} for ${attacker.attackDamage} damage');
  targetEntity.takeDamage(attacker.attackDamage);
}

class Character implements Mover, Attacker, HasHealth {
  Character(this.name, this.attackDamage, this.health);

  @override
  int attackDamage;

  @override
  int health;

  @override
  String name;

  @override
  attack(Entity targetEntity) {
    printAttack(targetEntity, this);
  }

  @override
  void move() {
    print('${this.name} moved');
  }

  @override
  takeDamage(int amount) {
    printTakeDamage(amount, this);
  }
}

class Wall implements HasHealth {
  Wall(this.name, this.health);

  @override
  int health;

  @override
  String name;

  @override
  takeDamage(int amount) {
    printTakeDamage(amount, this);
  }
}

class Turret implements Attacker {
  Turret(this.name, this.attackDamage);

  final int attackDamage;

  @override
  String name;

  @override
  attack(Entity targetEntity) {
    printAttack(targetEntity, this);
  }

  @override
  set attackDamage(int _attackDamage) {
    // ingore set attackDamage
  }
}

var turret = Turret('Turret', 5);
var character = Character('Character', 3, 100);
var wall = Wall('Wall', 200);

void main(List<String> args) {
  turret.attack(character);
  character.move();
  character.attack(wall);
  turret.attack(character);
  character.attack(wall);
  character.attack(wall);
  character.move();
  character.attack(wall);
}
