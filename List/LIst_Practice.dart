void main() {
  // Growable list
  List<String> fruits = ["Apple", "Banana", "Cherry", "Mango"];
  print(fruits);

  var f = List.empty(growable: true);
  f = ["Kola", "Afel", 69];
  print(f);
  print(f.runtimeType);

  var names = ["John", "Doe", "Alice", "Bob", 786];
  print(names);
  print(names.runtimeType);

  // Fixed-length list
  var num = List.filled(5, 0);
  print(num);

  //num.add(44);
  // This will throw an error because fixed-length lists cannot change size

  //num.insert(3, 55);
  // This will also throw an error for the same reason

  num[3] = 55; // This is allowed
  print(num);

  //List.generate(length, generatorFunction)
  var values = List.generate(4, (index) => index * index, growable: false);
  print(values);

  // List methods
  values.length; // Get length
  print("Length: ${values.length}");
  //values.add(16); // Add element
  //print("After adding 16: $values");

  // values.insert(2, 10); // Insert element at index 2
  // print("After inserting 10 at index 2: $values");
  // values.removeAt(1); // Remove element at index 1
  // print("After removing element at index 1: $values");

  var mixedList = [1, "Two", 3.0, true];

  mixedList.add(786);
  print("Mixed List after adding 786: $mixedList");

  mixedList.addAll([45, 46, 'Rayhan', 3.99]);
  print(mixedList);

  mixedList.insertAll(2, [3.44, 'Sifat']);
  print(mixedList);

  mixedList.removeAt(2);
  print(mixedList);

  mixedList.removeRange(7, 9);
  print(mixedList);

  mixedList.removeWhere((num) => num is int && num > 40);
  print(mixedList);

  mixedList.sort((a, b) => a.toString().compareTo(b.toString()));
  print(mixedList);

  var ll = [2, 9, 6, 0, 10];
  //ll.shuffle();
  //print(ll);

  ll.sort();
  print(ll);

  var reverse = ll.reversed;
  print(reverse); // Iterable
  print(reverse.toList()); // List

  print(ll);

  ll.sort((a, b) => a.compareTo(b));
  print(ll);

  ll.sort((a, b) => b.compareTo(a));
  print(ll);
  print('\n${'=' * 50}');

  //Iterating List

  List<String> colors = ['Red', 'Green', 'Blue', 'Yellow'];

  // 1. Using traditional for loop
  for (int i = 0; i < colors.length; i++) {
    print('${i + 1} : ${colors[i]}');
  }

  //2. Using for-in loop
  print('\n');
  for (var u in colors) {
    print(' - $u');
  }

  //3. Using forEach loop

  colors.forEach((col) {
    print(' * $col');
  });
  print('\n');
  //4. Using forEach with index
  colors.asMap().forEach((index, col) {
    print(' ${index} : $col');
  });

  var last_names = ['Bepari', 'Khan', 'Chowdhury', 'Ahmed'];

  var result = last_names
      .where((ln) => ln.length > 4)
      .map((ln) => ln.toUpperCase())
      .toList();
  ;
  print(result);

  // 2D List

  List<List<int>> matrix = [
    [2, 4, 6],
    [1, 3, 5],
    [8, 10, 12],
  ];
  print(matrix);

  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      print('Element at [$i][$j]: ${matrix[i][j]}');
    }
  }

  for (var row in matrix) {
    for (var element in row) {
      print('Element: $element');
    }
  }
}
