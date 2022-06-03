interface Entity {
  attackDamage: number
  health: number
  name: string

  move (): any
  attack (): any
  takeDamage (amount: number): any
}

class Character implements Entity {
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
    throw new Error("Method not implemented.")
  }
}

class Turret implements Entity {
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
    throw new Error("Method not implemented.")
  }

}