class Bird {
  fly (): void {
    console.log('I can fly')
  }
}
class Duck extends Bird {
  quack (): void {
    console.log('I can quack')
  }
}
class Penguin extends Bird {
  fly (): void {
    throw new Error("Cannot fly")
  }
  swim (): void {
    console.log('I can swim')
  }
}

function makeBird (bird: Bird): void {
  bird.fly()
}

const duck = new Duck()
const penguin = new Penguin()

makeBird(duck)
makeBird(penguin)