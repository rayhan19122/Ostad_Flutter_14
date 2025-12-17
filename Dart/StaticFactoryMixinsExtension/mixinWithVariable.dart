/*Mixin can have:

✔ variables
✔ methods
✔ getters/setters

কিন্তু mixin NEVER has a constructor.*/

mixin TimeTracker {
  DateTime? createdAt;

  void markCreated() {
    createdAt = DateTime.now();
  }
}

class Note with TimeTracker {
  String content;
  Note(this.content);
}

void main() {
  var n = Note("Hello");
  n.markCreated();
  print(n.createdAt);
}
