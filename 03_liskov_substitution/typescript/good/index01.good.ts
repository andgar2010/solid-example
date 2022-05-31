class Shape {
  constructor(width: number, height: number) {
    this.width = width
    this.height = height
  }
  area () { }
  setWidth (width: number) { }
  setHeight (height: number) { }
  width: number
  height: number
}

class Rectangle extends Shape {
  constructor(width: number, height: number) {
    super(width,height)
  }

  setWidth (width: number) {
    this.width = width
  }
  setHeight (height: number) {
    this.height = height
  }

  area (): number {
    return this.width * this.height
  }
}
class Square extends Shape {
  setWidth (width: number) {
    this.width = width
    this.height = width
  }
  setHeight (height: number) {
    this.width = height
    this.height = height
  }
  area (): number {
    return this.width * this.height
  }
}

function increaseReactangleWidth (rectangle: Rectangle) {
  rectangle.setWidth(rectangle.width + 1)
}
function increaseSquareWidth(square: Square) {
  square.setWidth(square.width + 1);
}

const rectangle1 = new Rectangle(10, 2)
const square = new Square(5, 5)

increaseReactangleWidth(rectangle1)
increaseSquareWidth(square)

console.log(rectangle1.area())
console.log(square.area())
