import 'practicequestion6.dart';

void main(List<String> args) {
  CurrentAccount abcAccount = CurrentAccount();

  SavingsAccount savingsAccountAbc = SavingsAccount();
  savingsAccountAbc.setAccNumber = 987654321;
  savingsAccountAbc.deposit(1000);
  print("Saving Account Balance: ${savingsAccountAbc.getBalance}");

  abcAccount.setAccNumber = 123456789;

  abcAccount.deposit(500);

  print("Current Account Balance : ${abcAccount.getBalance}");

  abcAccount.withdraw(200);
  print("Current Account Balance : ${abcAccount.getBalance}");

  abcAccount.withdraw(1000);
  print("Current Account Balance : ${abcAccount.getBalance}");

  abcAccount.withdraw(300);
  print("Current Account Balance : ${abcAccount.getBalance}");

  savingsAccountAbc.addInterest();
  print(
      "Saving Account Balance after Interest: ${savingsAccountAbc.getBalance}");

  // abcAccount.deposit(500);
  // print("Account Balance : ${abcAccount.getBalance}");

  printAccountDetail(savingsAccountAbc);
  printAccountDetail(abcAccount);
}
