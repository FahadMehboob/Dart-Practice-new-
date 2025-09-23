class Account {
  int _accNumber = 0;
  int _balance = 0;

  set setAccNumber(int accNum) {
    _accNumber = accNum;
  }

  get getAccNumber => _accNumber;

  get getBalance => _balance;

  set setBalance(int balance) {
    _balance = balance;
  }

  deposit(int amount) {
    _balance += amount;
    print("Account has been credited with $amount");
  }

  withdraw(int amount) {
    if (_balance >= amount) {
      _balance -= amount;
      print("Account has been debited with $amount");
    } else {
      print("Insufficient Balance!");
    }
  }
}

class SavingsAccount extends Account {
  double interestRate = 0.05;

  addInterest() {
    int interest = (getBalance * interestRate).toInt();
    setBalance = getBalance + interest;
    print("Interest of $interest added to Savings Account");
  }
}

class CurrentAccount extends Account {
  int overDraftLimit = -1000;

  @override
  withdraw(int amount) {
    if (getBalance - amount >= overDraftLimit) {
      setBalance = getBalance - amount;
      print("Account has been debited with $amount");
    } else {
      print("Overdraft limit Reached..!");
    }
  }
}

printAccountDetail(Account acc) {
  print("Account Number : ${acc.getAccNumber} Balance : ${acc.getBalance}");
}
