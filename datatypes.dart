void main() {
  // Integer type
  int age = 25; // Stores whole numbers

  // Double type
  double height = 175.5; // Stores decimal numbers

  // String type
  String name = "Alice"; // Stores text

  // Boolean type
  bool isStudent = true; // Stores true or false values

  // List type (ordered collection)
  List<String> fruits = [
    "Apple",
    "Banana",
    "Mango",
  ]; // Stores multiple values of same type

  // Map type (key-value pairs)
  Map<String, int> scores = {
    "Math": 90,
    "Science": 85,
  }; // Stores values with keys

  // Runes (Unicode values)
  Runes input = Runes('\u{1F600}'); // Stores Unicode characters

  // Symbol type
  Symbol sym = #mySymbol; // Used for reflection and metadata

  // Dynamic type (can hold any type)
  dynamic variable = "Hello"; // Can change type at runtime

  // Print all variables
  print("int: $age");
  print("double: $height");
  print("String: $name");
  print("bool: $isStudent");
  print("List: $fruits");
  print("Map: $scores");
  print("Runes: ${String.fromCharCodes(input)}");
  print("Symbol: $sym");
  print("dynamic: $variable");
}
