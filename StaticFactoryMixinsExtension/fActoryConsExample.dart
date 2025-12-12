class User {
  final String name;
  final int age;

  User(this.name, this.age);

  factory User.fromString(String data) {
    var parts = data.split(',');
    return User(parts[0], int.parse(parts[1]));
  }
}

void main() {
  var u = User.fromString("Rayhan,22");
  print(u.name); // Rayhan
  print(u.age);
}
