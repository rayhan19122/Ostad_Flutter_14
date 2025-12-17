mixin Fly {
  void fly() => print("Flying...");
}

mixin Swim {
  void swim() => print("Swimming...");
}

class Duck with Fly, Swim {}


