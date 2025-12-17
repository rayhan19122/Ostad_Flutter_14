class BankAccount {
  double _balance = 0.0;

  // void deposit(double amount) {
  //   if (amount <= 0)
  //     throw ArgumentError('Amount must be positive');
  //   else
  //     _balance += amount;
  // }
  set deposit(double amount) {
    if (amount <= 0)
      throw ArgumentError('Amount must be positive');
    else
      _balance += amount;
  }

  double showBalance() {
    return _balance;
  }

  //double get balance => _balance;
  double get balance {
    return _balance;
  }
}
