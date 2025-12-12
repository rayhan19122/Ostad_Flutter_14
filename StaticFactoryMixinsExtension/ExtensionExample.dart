extension StringHi on String {
  String sayHi() => "Hi, $this!";
}

extension IntDouble on int {
  //int get doubleIt => this * 2;
  int doubleIt() => this*2;
}

void main() {
  print("Rayhan".sayHi());   // Hi, Rayhan!

  print(10.doubleIt());   // 20
}
