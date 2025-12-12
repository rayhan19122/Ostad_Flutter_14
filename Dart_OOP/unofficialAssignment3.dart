abstract class BankAccount {
  double balance;
  BankAccount(this.balance);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount);
  void displayBalance() {
    print("Balance : $balance");
  }
}

class SavingsAccount extends BankAccount {
  SavingsAccount(super.balance);
  @override
  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
    } else {
      print("Insufficient funds");
    }
  }

  @override
  void displayBalance() {
    //super.displayBalance();
    print("Balance in SavingsAccount : $balance");
  }
}

class CheckingAccount extends BankAccount {
  CheckingAccount(super.balance);
  @override
  void withdraw(double amount) {
    if (balance < amount) {
      print("Overdraft fee applied");
      balance -= (amount + 10);
    } else
      balance -= amount;
  }

  @override
  void displayBalance() {
    //super.displayBalance();
    print("Balance in CheckingAccoung : $balance");
  }
}

void main() {
  BankAccount sb = SavingsAccount(100.00);
  BankAccount ch = CheckingAccount(100.00);
  List<BankAccount> transaction = [sb, ch];
  for (var acc in transaction) {
    acc.withdraw(150);
    acc.displayBalance();
  }
}
