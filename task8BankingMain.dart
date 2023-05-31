import 'dart:io';
import 'task8bankingclass.dart';
void main() {
  account user =
      account(userName: "Ash", cardNumber: 1497567891111111, cardBalance: 200);
  stdout.writeln('Salam, ${user.userName} \n Kart nomreniz ${user.cardNumber}');
  stdout.writeln(
      " Balansiniz: ${user.cardBalance} \n Pul depozit etmek ucun 1-e \n Cixarmaq ucun 2-ye \n  Yeniden melumatlari gostermek ucun 3-e basin");
  String input = stdin.readLineSync().toString();
  if (input == "1") {
    user.depositCash();
  } else if (input == "2") {
    user.withdrawCash();
  } else if (input == "3") {
    user.printInfo();
  } else {
    print("duzgun reqem secin!, programi yeniden bawladin");
  }
}
