interface Entity {
  attackDamage: number
  health: number
  name: string

  move (): any
  attack (targetEntity: Entity): any
  takeDamage (amount: number): any
}

class Character implements Entity {
  attackDamage: any
  health: any
  name: any
  move () {
    console.log(`${this.name} moved`)
  }
  attack (targetEntity: Entity) {
    console.log(
      `${this.name} attacked ${targetEntity.name} for ${this.attackDamage} damage`,
    )
    targetEntity.takeDamage(this.attackDamage)
  }
  takeDamage (amount: number) {
    this.health -= amount
    console.log(`${this.name} has ${this.health} health remaining`)
  }
}

class Turret implements Entity {
  attackDamage: any
  health: any
  name: any
  attack (targetEntity: Entity) {
    console.log(
      `${this.name} attacked ${targetEntity.name} for ${this.attackDamage} damage`,
    )
    targetEntity.takeDamage(this.attackDamage)
  }
  move () {
    throw new Error("Method not implemented.")
  }
  takeDamage (amount: number) {
    throw new Error("Method not implemented.")
  }
}

class Wall implements Entity {
  attackDamage: any
  health: any
  name: any
  move () {
    throw new Error("Method not implemented.")
  }
  attack () {
    throw new Error("Method not implemented.")
  }
  takeDamage (amount: number) {
    this.health -= amount
    console.log(`${this.name} has ${this.health} health remaining`)
  }
}