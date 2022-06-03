class Rectangle {
  constructor(width: number, height: number) {
    this.width = width
    this.height = height
  }
  width: number
  height: number

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
class Square extends Rectangle {
  setWidth (width: number) {
    this.width = width
    this.height = width
  }
  setHeight (height: number) {
    this.width = height
    this.height = height
  }
}

function increaseReactangleWidth (rectangle: Rectangle) {
  rectangle.setWidth(rectangle.width + 1)
}

const rectangle1 = new Rectangle(10, 2)
const square = new Square(5, 5)

increaseReactangleWidth(rectangle1)
increaseReactangleWidth(square)

console.log(rectangle1.area())
console.log(square.area())
