mixin Bank_method {
  int calc_interest_rate(int origin, double rate, int month) {
    return (origin * rate * month / 12).round();
  }
}

class IBank {
  int money = 0;

  void deposit(int input) {}

  int withdrawal(int input) {
    return 0;
  }

  int get getMoney {
    return money;
  }

  set setMoney(int input) {}
}

abstract class Bank implements IBank {
  int money = 0;

  void deposit(int input) {
    money += input;
  }

  int withdrawal(int input) {
    if (money < input) {
      money = 0;
      return money;
    }
    money -= input;
    return input;
  }

  int get getMoney {
    return money;
  }

  set setMoney(int input) {
    money = input;
  }
}

class KoreaBank extends Bank with Bank_method {
  double interest_rate = 0.5;
  int month = 3;

  KoreaBank(int? input) {
    super.money = input ?? 0;
  }
  KoreaBank.initRage(double rate) {
    interest_rate = rate;
  }

  int get getMoney {
    super.money = super.money +
        calc_interest_rate(super.money, this.interest_rate, this.month);
    return super.money;
  }
}

void main() {
  KoreaBank bank = KoreaBank(3000);

  print("GET MONEY");
  print(bank.getMoney);

  print("출금");
  bank.withdrawal(500);
  print(bank.getMoney);

  print("입금");
  bank.deposit(500);
  print(bank.getMoney);
}
