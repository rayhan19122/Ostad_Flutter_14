class Student {
  String name;
  int roll;
  Student(this.name, this.roll);

  void displayInfo() {
    print('Name = $name\nRoll = $roll');
  }
}

class Person {
  String name;
  Person(this.name);
}

class Teacher extends Person {
  String subject;
  Teacher(String name, this.subject) : super(name);
}

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double _radius;
  Circle(this._radius);

  set setRadius(double value) {
    if (value > 0) {
      _radius = value;
    } else {
      print("Radius must be positive");
    }
  }

  double get getRadius => _radius;

  @override
  double area() {
    return 3.1416 * _radius * _radius;
  }
}

void main() {
  final st = Student('Rayhan', 446);
  st.displayInfo();
  print('\n');

  final teacher = Teacher('Md. Rakibul Islam', 'Computer Networks');
  print('Name : ${teacher.name}\nSubject : ${teacher.subject}');
  print('\n');

  final cr = Circle(4.5);
  print('Area = ${cr.area()}');
  print('\n');
  cr.setRadius = -3.5;
  cr.setRadius = 3.2;
  print('Area : ${cr.area()}');
}
