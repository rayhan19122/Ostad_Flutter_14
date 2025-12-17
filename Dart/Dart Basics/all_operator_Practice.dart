void main() {
  num a = 10;
  num b = 3.5;

  num quotient = a ~/ b;
  print('Division: $a/$b = $quotient');

  num x = 5;
  x++;
  print(x);
  print(++x);

  int intValue = 10;
  double doubleValue = 10.0;

  print('\nComparing int and double:');
  print('$intValue == $doubleValue is ${intValue == doubleValue}'); // Ans: true

  int min = 0;
  int max = 100;
  int value = 50;

  bool isInRange = value >= min && value <= max;
  print('\nIs $value in range [$min, $max]? $isInRange');

  num val1 = 45, val2 = 55;
  num maxi = val1 > val2 ? val1 : val2;
  print(maxi);

  num mini = val1 < val2 ? val1 : val2;
  print(mini);

  String? firstName;
  String? lastName = 'Smith';
  String fullName = '${firstName ?? 'Unknown'} ${lastName ?? 'Unknown'}';
  print('\nFull name: $fullName'); // Output: Unknown Smith

  String? cache;

  cache ??= 'Initial Data';
  print('\nCache: $cache');

  cache ??= 'New Data';
  print('\nCache: $cache'); // Output: Initial Data (unchanged)

  String mut = 'hello';
  mut = 'HELLO_PETER';
  print(mut);

  print('\n');
  List<dynamic> list = []
    ..add(4)
    ..add(5)
    ..add(34);
  print(list);

  List<String>? nullableList;

  // This won't crash even though the list is null
  nullableList
    ?..add('Item1')
    ..add('Item2');
  print(nullableList); 
}
