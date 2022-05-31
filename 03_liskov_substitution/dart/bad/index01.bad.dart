class Rectangle {
  Rectangle(this.width, this.height);

  late int height;
  late int width;

  void setWidth(int width) => this.width = width;

  void setHeight(int height) => this.height = height;

  int area() => this.width * this.height;
}

class Square extends Rectangle {
  Square(super.width, super.height);

  setWidth(int width) {
    this.width = width;
    this.height = width;
  }

  setHeight(int height) {
    this.width = height;
    this.height = height;
  }
}

void increaseReactangleWidth(Rectangle rectangle) {
  rectangle.setWidth(rectangle.width + 1);
}

void main(List<String> args) {
  var rectangle1 = Rectangle(10, 2);
  var square = Square(5, 5);

  increaseReactangleWidth(rectangle1);
  increaseReactangleWidth(square);

  print(rectangle1.area());
  print(square.area());
}
