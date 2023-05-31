import 'dart:io';
class account {
  late final String userName;
  late final int cardNumber;
  int cardBalance;
  account(
      {required this.userName,
      required this.cardNumber,
      required this.cardBalance});
  void printInfo() {
    print("Adiniz: $userName");
    print("Kart nomresi: $cardNumber");
    print("Balansiniz: $cardBalance");
  }
  void depositCash() {
    stdout.writeln(" Ne qeder pul depozit etmek isteyirsiniz?");
    int inputMoney = int.parse(stdin.readLineSync()!);
    if (inputMoney <= 0) {
      print("Depozit 0 ve ya menfi ola bilmez!");
      depositCash();
    } else {
      cardBalance = cardBalance + inputMoney;
      print("$inputMoney Depozit olundu");
      printInfo();
    }
  }
  void withdrawCash() {
    stdout.writeln(" Ne qeder pul cekmek isteyirsiniz?");
    int outputMoney = int.parse(stdin.readLineSync()!);
    if (outputMoney <= 0) {
      print("Mebleg 0 ve ya menfi ola bilmez");
    } else if (outputMoney > cardBalance) {
      print("Balansinizda cemi 200 manat pul var");
      withdrawCash();
    } else {
      cardBalance = cardBalance - outputMoney;
      print("$outputMoney Balansdan cixarildi");
      printInfo();
    }
  }
}
