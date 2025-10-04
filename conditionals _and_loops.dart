void main() {
  // If-else conditional
  int a = 10;
  if (a > 5) {
    print('a is greater than 5');
  } else {
    print('a is not greater than 5');
  }

  // If-else if-else conditional
  int b = 7;
  if (b > 10) {
    print('b is greater than 10');
  } else if (b > 5) {
    print('b is greater than 5 but less than or equal to 10');
  } else {
    print('b is 5 or less');
  }

  // Switch-case conditional
  String grade = 'B';
  switch (grade) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Good');
      break;
    case 'C':
      print('Average');
      break;
    default:
      print('Unknown grade');
  }

  // For loop
  for (int i = 0; i < 5; i++) {
    print('For loop iteration: $i');
  }

  // While loop
  int count = 0;
  while (count < 3) {
    print('While loop count: $count');
    count++;
  }

  // Do-while loop
  int num = 0;
  do {
    print('Do-while loop num: $num');
    num++;
  } while (num < 2);

  // For-in loop (iterating over a collection)
  List<String> fruits = ['apple', 'banana', 'cherry'];
  for (var fruit in fruits) {
    print('Fruit: $fruit');
  }

  // ForEach loop (using a function)
  fruits.forEach((fruit) {
    print('ForEach fruit: $fruit');
  });
}