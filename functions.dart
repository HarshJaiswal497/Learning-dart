void main() {
  // Call a basic function with no parameters
  greet();

  // Call a function with positional parameters and print the result
  print(add(3, 5));

  // Call a function with named parameters and print the result
  print(formatName(firstName: 'John', lastName: 'Doe'));

  // Call a function with an optional positional parameter
  print(power(2)); // Uses default exponent
  print(power(2, 3)); // Uses provided exponent

  // Call an arrow function and print the result
  print(square(4));

  // Use an anonymous function with forEach to print doubled values
  var numbers = [1, 2, 3];
  numbers.forEach((num) => print(num * 2));

  // Use higher-order functions (passing functions as arguments)
  print(applyOperation(5, 3, add)); // Uses 'add' function
  print(applyOperation(5, 3, subtract)); // Uses 'subtract' function
}

// Basic function: prints a greeting
void greet() {
  print('Hello!');
}

// Function with parameters and return type: adds two integers
int add(int a, int b) {
  return a + b;
}

// Function with named parameters: formats a name
String formatName({required String firstName, required String lastName}) {
  return '$lastName, $firstName';
}

// Function with optional positional parameter: calculates power
int power(int base, [int exponent = 2]) {
  // Returns base raised to the exponent
  return base * base; // Note: This is not a true power function
}

// Arrow function: returns the square of a number
int square(int x) => x * x;

// Higher-order function: takes another function as a parameter
int applyOperation(int a, int b, int Function(int, int) operation) {
  return operation(a, b);
}

// Another function for higher-order example: subtracts two integers
int subtract(int a, int b) => a - b;

// ---------------------------------------------
// Theory: Dart Functions
// ---------------------------------------------
// In Dart, functions are blocks of code that perform specific tasks.
// Functions can have parameters (positional, named, optional) and return values.
// Dart supports arrow functions, anonymous functions, and higher-order functions.
// - Positional parameters: Passed in order.
// - Named parameters: Specified by name, can be required or optional.
// - Optional parameters: Can be omitted, may have default values.
// - Arrow functions: Short syntax for single-expression functions.
// - Anonymous functions: Functions without a name, often used as arguments.
// - Higher-order functions: Functions that take other functions as parameters or return them.
//
// Example:
// int add(int a, int b) => a + b;
// print(add(2, 3)); // Output: 5
