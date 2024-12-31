class Account {
  String name;
  double balance;
  bool isAuthenticated;
  DateTime? createAt;

  Account(
      {required this.name,
      required this.balance,
      required this.isAuthenticated,
      this.createAt});

  editBalance({required value}) {
    balance = balance + value;
  }
}
