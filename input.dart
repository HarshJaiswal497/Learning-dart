// Dart Input Examples

// For command-line input, you need to import 'dart:io'
import 'dart:io';

void main() {
  // 1. Reading a line of text from the user
  stdout.write('Enter your name: '); // Prompt user
  String? name = stdin.readLineSync(); // Read input as String (nullable)
  print('Hello, $name!');

  // 2. Reading and parsing integer input
  stdout.write('Enter your age: ');
  String? ageInput = stdin.readLineSync();
  int age = int.parse(ageInput ?? '0'); // Convert input to int
  print('You are $age years old.');

  // 3. Reading double input
  stdout.write('Enter your height in cm: ');
  String? heightInput = stdin.readLineSync();
  double height = double.parse(heightInput ?? '0');
  print('Your height is $height cm.');

  // 4. Reading multiple values (space-separated)
  stdout.write('Enter two numbers separated by space: ');
  String? numbers = stdin.readLineSync();
  if (numbers != null) {
    var parts = numbers.split(' ');
    int num1 = int.parse(parts[0]);
    int num2 = int.parse(parts[1]);
    print('Sum: ${num1 + num2}');
  }

  // 5. Input in Flutter (for mobile apps)
  // In Flutter, input is handled using widgets like TextField and controllers.
  // Example (not runnable in console Dart):
  // TextField(
  //   controller: myController,
  //   decoration: InputDecoration(labelText: 'Enter text'),
  // )

  // 6. Command-line arguments
  // You can access command-line arguments using the 'args' parameter in main:
  // void main(List<String> args) {
  //   print(args); // List of arguments passed to the program
  // }

  // Note: stdin.readLineSync() is synchronous and blocks until input is entered.
  // Always validate and handle possible null or invalid input.
}
