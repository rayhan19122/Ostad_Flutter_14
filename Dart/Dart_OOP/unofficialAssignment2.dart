class Vehicle {
  String make;
  String model;

  Vehicle(this.make, this.model);

  void drive() {
    print("Driving the $make $model");
  }
}

class Car extends Vehicle {
  //Car(super.make, super.model);
  Car(String make, String model) : super(make, model);

  int numberOfDoors = 4;
  @override
  void drive() {
    super.drive();
    print("This car has $numberOfDoors doors");
  }
}

void main() {
  final myCar = Car('Toyota', 'Corolla');
  myCar.drive();
}
