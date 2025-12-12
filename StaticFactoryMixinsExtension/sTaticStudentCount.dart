class Student {
  String? name;
  int Id;
  static int cnt = 0;

  Student(this.name, this.Id) {
    cnt++;
  }

  static int square(int x) {
    //print(name); static method can't access instance variable
    return x * x;
  }
}

void main() {
  final s1 = Student('Rayhan', 446);
  final s2 = Student('Atik', 445);
  print(Student.square(12));
  print(Student.cnt);
}
