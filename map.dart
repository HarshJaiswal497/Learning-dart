// ignore_for_file: unused_local_variable

void main() {
  // Creating a Map
  Map<String, int> ages = {
    'Alice': 24,
    'Bob': 30,
    'Charlie': 28,
  };

  // Different ways to create a Map
  var emptyMap = {}; // Map<dynamic, dynamic>
  var typedMap = <String, double>{};
  var fromEntries = Map.fromEntries([
    MapEntry('x', 1),
    MapEntry('y', 2),
  ]);
  var fromIterable = Map.fromIterable([1, 2, 3], key: (e) => 'key$e', value: (e) => e * 10);

  // Accessing values
  print(ages['Alice']); // 24

  // Adding and updating entries
  ages['Dave'] = 35; // Add
  ages['Alice'] = 25; // Update

  // Removing entries
  ages.remove('Bob');

  // Checking existence
  print(ages.containsKey('Charlie')); // true
  print(ages.containsValue(25)); // true

  // Iterating over Map
  ages.forEach((key, value) => print('$key: $value'));
  for (var entry in ages.entries) {
    print('${entry.key} -> ${entry.value}');
  }

  // Getting keys and values
  print(ages.keys); // Iterable<String>
  print(ages.values); // Iterable<int>

  // Length
  print(ages.length);

  // Clear all entries
  ages.clear();

  // Map operations
  var map1 = {'a': 1, 'b': 2};
  var map2 = {'b': 3, 'c': 4};
  var merged = {...map1, ...map2}; // {'a': 1, 'b': 3, 'c': 4}

  // Map transformation
  var doubled = map1.map((key, value) => MapEntry(key, value * 2));

  // Filtering
  var filtered = Map.fromEntries(map1.entries.where((e) => e.value > 1));

  // Unmodifiable Map
  final unmodifiable = Map.unmodifiable(map1);

  // Nested Map
  var nested = {
    'outer': {
      'inner': 42,
    }
  };

  // Map with different types
  Map<int, String> numToStr = {1: 'one', 2: 'two'};
  Map<dynamic, dynamic> mixed = {'str': 1, 2: 'two', true: false};

  // Spread operator
  var spread = {...map1, ...{'d': 5}};

  // Null-aware access
  print(ages['Unknown'] ?? 'Not found');
}