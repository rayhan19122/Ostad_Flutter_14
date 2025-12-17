abstract class Animal {
  String sound();

  factory Animal(String type) {
    if (type == "dog") return Dog();
    if (type == "cat") return Cat();
    throw "Unknown type";
  }
}

class Dog implements Animal {
  @override
  String sound() => "Woof";
}

class Cat implements Animal {
  @override
  String sound() => "Meow";
}

void main() {
  var a = Animal("dog");
  print(a.sound()); // Woof
}
