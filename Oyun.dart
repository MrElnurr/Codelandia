import 'dart:io';
import 'dart:math';

void main() {
  int playerScore = 0;
  int computerScore = 0;
  Random random = Random();

  while (true) {
    stdout.write('Seciminizi edin (rock, paper, scissors): ');
    String playerMove = stdin.readLineSync()!.toLowerCase();

    if (playerMove != 'rock' &&
        playerMove != 'paper' &&
        playerMove != 'scissors') {
      print('Duzgun secim edin');
      continue;
    }

    List<String> moves = ['rock', 'paper', 'scissors'];
    String computerMove = moves[random.nextInt(3)];

    print('Oyuncu: $playerMove');
    print('AI: $computerMove');

    if (playerMove == computerMove) {
      print('Berabere');
    } else if ((playerMove == 'rock' && computerMove == 'scissors') ||
        (playerMove == 'paper' && computerMove == 'rock') ||
        (playerMove == 'scissors' && computerMove == 'paper')) {
      print('Sen qalib geldin');
      playerScore++;
    } else {
      print('AI qalib geldi');
      computerScore++;
    }

    print('Oyuncu xali: $playerScore');
    print('Kompyuter xali: $computerScore');

    stdout.write('Yeniden oynamaq isteyirsiz? (he/yox): ');
    String playAgain = stdin.readLineSync()!.toLowerCase();

    if (playAgain != 'he') {
      break;
    }
  }
  print('Final xallar:');
  print('Oyuncu xali: $playerScore');
  print('AI xali: $computerScore');
}
