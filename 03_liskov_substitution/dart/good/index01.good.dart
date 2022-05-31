abstract class Shape {
  Shape(this.width, this.height);
  late int width;
  late int height;
  void setWidth(int width);
  void setHeight(int height);
  int area();
}

class Rectangle extends Shape {
  Rectangle(super.width, super.height);

  @override
  void setWidth(width) => this.width = width;

  @override
  void setHeight(height) => this.height = height;

  int area() => this.width * this.height;
}

class Square extends Shape {
  Square(super.width, super.height);

  setWidth(int width) {
    this.width = width;
    this.height = width;
  }

  setHeight(int height) {
    this.width = height;
    this.height = height;
  }

  int area() => this.width * this.height;
}

increaseReactangleWidth(Rectangle rectangle) {
  rectangle.setWidth(rectangle.width + 1);
}

increaseSquareWidth(Square square) {
  square.setWidth(square.width + 1);
}

void main(List<String> args) {
  var rectangle1 = Rectangle(10, 2);
  var square = Square(5, 5);

  increaseReactangleWidth(rectangle1);
  increaseSquareWidth(square);

  print(rectangle1.area());
  print(square.area());
}
