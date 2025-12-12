class DatabaseService {
  static final DatabaseService _instance = DatabaseService._();

  factory DatabaseService() => _instance;

  DatabaseService._();

  void connect() => print("Connected to DB...");
}

void main() {
  var db1 = DatabaseService();
  var db2 = DatabaseService();

  print(identical(db1, db2)); // true
}
