class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  double discountedPrice(double discountPercent) {
    return (price - (price * (discountPercent / 100)));
  }

  void display() {
    print(
      "Book Title  = $title\nAuthor = $author\nPrice = $price\nDisconted Price = ${discountedPrice(15)}",
    );
  }
}

class Employee {
  String name;
  double salary;
  Employee(this.name, this.salary);

  void displayInfo() {
    print('Name : $name\nSalary = $salary');
  }
}

class Manager extends Employee {
  String department;
  Manager(super.name, super.salary, this.department);

  @override
  void displayInfo() {
    print('Display Manager Info : ');
    super.displayInfo();
    print('Department  = $department');
  }
}

class Developer extends Employee {
  String programmingLanguage;
  Developer(super.name, super.salary, this.programmingLanguage);

  @override
  void displayInfo() {
    print('Display Developer Info : ');
    super.displayInfo();
    print('Programming Language : $programmingLanguage');
  }
}

abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance {
  @override
  void turnOff() {
    print('Fan is now turning off');
  }

  @override
  void turnOn() {
    print('Fan is now running');
  }
}

class Light extends Appliance {
  @override
  void turnOn() {
    print('Light is switched on');
  }

  @override
  void turnOff() {
    print('Light is switched off');
  }
}

void main() {
  final book1 = Book('The Alchemist', 'Paulo Coelho', 220.00);
  final book2 = Book('The Essential Rumi', 'Jalal al-Din Rumi', 350.00);

  book1.display();
  print('\n');
  book2.display();
  print('\n');

  final manager = Manager('Md Abu Rayhan', 85000.00, 'HR');
  manager.displayInfo();
  print('\n');
  final dev1 = Developer('Rayhan', 52000.00, 'Dart');
  dev1.displayInfo();
  print('\n');

  final fan = Fan();
  fan.turnOn();
  fan.turnOff();
  print('\n');
  final light = Light();
  light.turnOn();
  light.turnOff();
  print('\n');
}
