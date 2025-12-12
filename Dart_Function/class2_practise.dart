void greeting({String? n, int? age}) {
  print("Hey! $n. You're $age right?");
}

void Register({required String email, required String password}) {
  print("$email registered!!");
}

void login({String username = 'Guest'}) {
  print("Welcome $username");
}

void showDetails(String name, [int? age]) {
  print("Name : $name, Age : ${age ?? 'Unknown'}");
}

void createProfile(
  String name,
  int age, {
  String? email,
  String? phone,
  bool isActive = true,
}) {
  print('Profile:');
  print('  Name: $name');
  print('  Age: $age');
  if (email != null) print('  Email: $email');
  if (phone != null) print('  Phone: $phone');
  print('  Active: $isActive');
}

void main() {
  String name = 'Rayhan';
  int age = 23;

  greeting();
  greeting(n: name);
  greeting(n: name, age: age);

  Register(email: 'rayhan19122@gmail.com', password: '123Rayhan');

  login();
  login(username: 'rayhan19122');

  showDetails('Rayhan');
  showDetails('Rayhan', 23);

  print('-' * 30);

  createProfile('Rayhan', 23);
  print('\n');
  createProfile('Riyad', 18, email: 'rayhan19122@gmail.com');
    print('\n');
  createProfile(
    'Riyad',
    18,
    email: 'rayhan19122@gmail.com',
    phone: '01705500372',
  );
}
