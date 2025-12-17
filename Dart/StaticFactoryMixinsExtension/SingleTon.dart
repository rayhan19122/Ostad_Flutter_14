class Logger {
  static final Logger _instance = Logger._internal();

  factory Logger() => _instance;

  Logger._internal(); // private constructor

  void log(String msg) => print("LOG: $msg");
}

void main() {
  var a = Logger();
  var b = Logger();
  b.log('Hello world');
  print(identical(a, b)); // true
}
