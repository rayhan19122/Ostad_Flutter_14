class Person {
  String firstName;
  String lastName;

  Person(this.firstName, this.lastName);

  // Getter for full name
  String get fullName => '$firstName $lastName';
}

void main() {
  var p = Person('Abu', 'Rayhan');
  print(p.fullName); // Abu Rayhan
}
