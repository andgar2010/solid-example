class Entity {
  Entity(this.name, this.attackDamage, this.health);

  int attackDamage;
  int health;
  String name;

  move() {
    print('${this.name} moved');
  }

  attack(Entity targetEntity) {
    print(
        '${this.name} attacked ${targetEntity.name} for ${this.attackDamage} damage');
    targetEntity.takeDamage(this.attackDamage);
  }

  takeDamage(int amount) {
    this.health -= amount;
    print('${this.name} has ${this.health} health remaining');
  }
}

class Character extends Entity {
  Character(super.name, super.attackDamage, super.health);
}

class Wall extends Entity {
  Wall(name, health) : super(name, 0, health);

  move() {
    return null;
  }

  attack(_) {
    return null;
  }
}

class Turret extends Entity {
  Turret(name, attackDamage) : super(name, attackDamage, -1);

  move() {
    return null;
  }

  takeDamage(_) {
    return null;
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
