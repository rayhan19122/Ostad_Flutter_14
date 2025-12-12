import 'account.dart';

void main() {
  BankAccount ob1 = BankAccount();
  //ob1.deposit(1000);
  ob1.deposit = 500;

  print(ob1.balance);
  print(ob1.showBalance());
}
