class Logger {
  void log(String message) {
    print("Default logging : $message");
  }
}

class Database {
  void connect() {}
}

class FileLogger implements Logger {
  @override
  void log(String message) {
    print("Writing to file : $message");
  }
}

class SecureService implements Logger, Database {
  @override
  void connect() {
    print("I'm from Secure Service");
  }

  @override
  void log(String message) {
    print("I'm from Secure Service $message");
  }

  void printInfo() {
    print('Hello world');
  }
}

void main() {
  Logger obj = SecureService();
  obj.log('Hello');
  Database obj2 = SecureService();
  obj2.connect();
  //obj2.printInfo();
  //obj.connect();
}
