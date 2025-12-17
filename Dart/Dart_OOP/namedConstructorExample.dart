class User {
  String? name;
  String? email;
  int? age;

  User({this.name, this.email, this.age});
  // User(String name, String email, int age) {
  //   this.name = name;
  //   this.email = email;
  //   this.age = age;
  // }

  User.guest() : name = 'Guest', email = 'guest@example.com', age = 0;

  // User.guest() {
  //   name = 'Guest';
  //   email = 'guest@example.com';
  //   age = 18;
  // }
  User.formJson(Map<String, dynamic> json)
    : name = json['name'],
      email = json['email'],
      age = json['age'];
}

void main() {
  var normalUser = User(name: 'Rayhan', email: 'rayhan19122@gmail.com',age:23);
  var guestUser = User.guest();
  var dbUser = User.formJson({
    'name': 'Abir',
    'email': 'abir@gmail.com',
    'age': 25,
  });
}
