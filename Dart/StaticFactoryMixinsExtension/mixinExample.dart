mixin Logger {
  void log(String message) {
    print("LOG: $message");
  }
}

class Service with Logger {}

void main() {
  var s = Service();
  s.log("Service started");
}
