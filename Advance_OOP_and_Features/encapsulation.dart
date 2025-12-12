class User {
  String _name;
  User(this._name);
  String get Name => _name;
}

void main() {
  User ob1 = User('Rayhan');
  print(ob1.Name);

  // Interesting!! Private fields are accesible at same library/file.
  ob1._name = 'Abu Rayhan';
  print(ob1.Name);
}
