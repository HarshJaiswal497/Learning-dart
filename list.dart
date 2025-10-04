void main() {
  // Creating lists with explicit types
  var list1 = [1, 2, 3]; // List of int (type inferred)
  List<String> list2 = ['a', 'b', 'c']; // List of String
  var emptyList = <double>[]; // Empty list of double

  // Creating lists using var
  var stringList = <String>['apple', 'banana']; // List of String
  var intListVar = <int>[10, 20, 30]; // List of int
  var mixedList = [1, 'two', 3.0]; // List<dynamic> (mixed types)

  // Fixed-length list
  var fixedList = List<int>.filled(3, 0); // [0, 0, 0]

  // Growable list
  var growableList = List<int>.empty(growable: true);

  // Adding elements
  list1.add(4);
  list2.addAll(['d', 'e']);
  stringList.add('cherry');
  intListVar.add(40);

  // Inserting elements
  list1.insert(0, 0); // Insert at index
  list2.insertAll(2, ['x', 'y']);
  stringList.insert(1, 'orange');

  // Removing elements
  list1.remove(2); // Remove by value
  list2.removeAt(1); // Remove by index
  list1.removeLast();
  list2.removeRange(0, 2);
  stringList.remove('banana');

  // Accessing elements
  var first = list1[0];
  var last = list2[list2.length - 1];
  var firstString = stringList[0];

  // Updating elements
  list1[1] = 10;
  stringList[0] = 'grape';

  // Searching
  bool contains = list1.contains(10);
  int index = list2.indexOf('c');
  bool hasApple = stringList.contains('apple');

  // Iterating
  for (var item in list1) {
    print(item);
  }
  list2.forEach((item) => print(item));
  for (var fruit in stringList) {
    print(fruit);
  }

  // Sorting
  list1.sort();
  list2.sort((a, b) => b.compareTo(a)); // Descending
  stringList.sort();

  // Reversing
  var reversed = list1.reversed.toList();
  var reversedStrings = stringList.reversed.toList();

  // Sublist
  var sub = list2.sublist(0, 2);
  var subStrings = stringList.sublist(0, 2);

  // Mapping
  var mapped = list1.map((e) => e * 2).toList();
  var mappedStrings = stringList.map((e) => e.toUpperCase()).toList();

  // Filtering
  var filtered = list1.where((e) => e > 1).toList();
  var filteredStrings = stringList.where((e) => e.startsWith('g')).toList();

  // Clearing
  list1.clear();
  stringList.clear();

  // List types
  List<int> intList = [1, 2, 3];
  List<dynamic> dynamicList = [1, 'a', true];
  List<Object?> objectList = [null, 1, 'b'];
}
