class Account {
  String owner;
  int balance;

  Account(this.owner, this.balance);

  void transfer(Account dest, int amout) {
    if (balance < amout) {
      throw Exception('잔액이 부족합니다');
    }
    dest.balance += amout;
    balance -= amout;
  }
}
