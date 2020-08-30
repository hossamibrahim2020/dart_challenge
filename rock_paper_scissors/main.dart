import 'dart:io';
import 'dart:math';

main() {
  GameViewModel game = GameViewModel();
  game.computerGuess();
}

abstract class Options {
  List<String> options = ['r', 'p', 's'];
  Random random = Random();
}

class GameViewModel extends Options {
  String userInput;
  void computerGuess() {
    do {
      print('enter your guess');
      String computer = options[random.nextInt(options.length)];
      userInput = stdin.readLineSync();
      if (computer == userInput) {
        print('you are right');
      } else {
        print('computer guess is $computer');
      }
    } while (userInput != 'exit');
    print('game end');
  }
}
