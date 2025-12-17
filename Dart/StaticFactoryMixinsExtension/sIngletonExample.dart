class A {
  static A? _instance;
  factory A() {
    _instance ??= A.internal();
    return _instance!;
  }

  A.internal();
}

void main() {
  var ob = A();
  var ob1 = A();

  print(ob == ob1);
}
