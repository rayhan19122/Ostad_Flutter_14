class Animal {
  void eat() => print("Eating...");
}

mixin Walker on Animal {
  void walk() {
    print("Walking...");
    eat(); // allowed because only Animals have eat()
  }
}

class Dog extends Animal with Walker {}
