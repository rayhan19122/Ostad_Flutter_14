import 'dart:collection';

class Team {
  final List<String> _members = ["Rayhan", "Alex"];

  UnmodifiableListView<String> get members => UnmodifiableListView(_members);

  void addMember(String name) {
    _members.add(name);
  }

  List<String> get mem => _members;
}

void main() {
  Team a = Team();
  a._members.add('Rafia');
  print(a.mem);
}
