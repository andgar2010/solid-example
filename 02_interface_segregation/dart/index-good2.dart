abstract class Entity {
  Entity(this.name);

  String name;
}

mixin Mover on Entity {
  void move() {
    print('${this.name} moved');
  }
}

mixin Attacker {
  void attack(targetEntity, attacker) {
    print(
        '${attacker.name} attacked ${targetEntity.name} for ${attacker.attackDamage} damage');
    targetEntity.takeDamage(attacker.attackDamage);
  }
}

mixin HasHealth {
  void takeDamage(int amount, objectThis) {
    objectThis.health -= amount;
    print('${objectThis.name} has ${objectThis.health} health remaining');
  }
}

class Character extends Entity with Mover, Attacker, HasHealth {
  Character(super.name, this.attackDamage, this.health);

  final int attackDamage;
  int health;

  takeDamage(int amount, [_]) {
    super.takeDamage(amount, this);
  }

  attack(targetEntity, [_]) {
    super.attack(targetEntity, this);
  }
}

class Wall extends Entity with HasHealth {
  Wall(super.name, this.health);

  int health;

  @override
  takeDamage(int amount, [_]) {
    super.takeDamage(amount, this);
  }
}

class Turret extends Entity with Attacker {
  Turret(super.name, this.attackDamage);

  final int attackDamage;

  attack(targetEntity, [_]) {
    super.attack(targetEntity, this);
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
}
