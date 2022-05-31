class FlyingBird {
  fly (): void {
    console.log('I can fly')
  }
}

class SwimingBrid {
  swim (): void {
    console.log('I can swim')
  }
}

class Duck extends FlyingBird {
  quack (): void {
    console.log('I can quack')
  }
}
class Penguin extends SwimingBrid {

}

function makeFlyingBirdFly (bird: FlyingBird): void {
  bird.fly()
}
function makeSwimingBirdSwim (bird: SwimingBrid): void {
  bird.swim()
}

const duck = new Duck()
const penguin = new Penguin()

makeFlyingBirdFly(duck)
makeSwimingBirdSwim(penguin)