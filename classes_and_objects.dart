/*
  Dart Classes and Objects: Basics to Advanced
*/

// 1. Basic Class Definition
class Person {
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);

  // Method
  void greet() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

// 2. Named Constructors
class Point {
  double x, y;

  Point(this.x, this.y);

  // Named constructor
  Point.origin() : x = 0, y = 0;
}

// 3. Inheritance
class Animal {
  void speak() => print('Animal speaks');
}

class Dog extends Animal {
  @override
  void speak() => print('Woof!');
}

// 4. Abstract Classes
abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() => 3.14159 * radius * radius;
}

// 5. Factory Constructors
class Logger {
  static final Logger _instance = Logger._internal();

  factory Logger() {
    return _instance;
  }

  Logger._internal();

  void log(String msg) => print('Log: $msg');
}

// 6. Getters and Setters
class Rectangle {
  double _width, _height;

  Rectangle(this._width, this._height);

  double get area => _width * _height;
  set width(double w) => _width = w;
  set height(double h) => _height = h;
}

// 7. Static Members
class MathUtils {
  static double pi = 3.14159;

  static double square(double x) => x * x;
}

// 8. Mixins
mixin Swimmer {
  void swim() => print('Swimming');
}

class Fish with Swimmer {}

// 9. Interfaces (Implemented via 'implements')
abstract class Printable {
  void printInfo();
}

class Book implements Printable {
  String title;
  Book(this.title);

  @override
  void printInfo() => print('Book: $title');
}

// 10. Cascade Notation
class Builder {
  String name = '';
  int value = 0;

  void setName(String n) => name = n;
  void setValue(int v) => value = v;
}

// Usage Examples
void main() {
  // Basic class and object
  var p = Person('Alice', 30);
  p.greet();

  // Named constructor
  var origin = Point.origin();
  print('Origin: (${origin.x}, ${origin.y})');

  // Inheritance
  var dog = Dog();
  dog.speak();

  // Abstract class
  var circle = Circle(5);
  print('Circle area: ${circle.area()}');

  // Factory constructor
  var logger1 = Logger();
  var logger2 = Logger();
  print(logger1 == logger2); // true

  // Getters and setters
  var rect = Rectangle(10, 5);
  print('Rectangle area: ${rect.area}');
  rect.width = 20;
  print('Updated area: ${rect.area}');

  // Static members
  print('Pi: ${MathUtils.pi}');
  print('Square of 4: ${MathUtils.square(4)}');

  // Mixins
  var fish = Fish();
  fish.swim();

  // Interface
  var book = Book('Dart Programming');
  book.printInfo();

  // Cascade notation
  var builder = Builder()
    ..setName('Test')
    ..setValue(42);
  print('Builder: ${builder.name}, ${builder.value}');
}
