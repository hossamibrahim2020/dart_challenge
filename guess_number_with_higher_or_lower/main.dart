/*
Write a program for a Higher / Lower guessing game
The computer randomly generates a sequence of up to 10 numbers between 1 and 13. The player each after seeing each number
in turn has to decide whether the next number is higher or lower.
If you can remember Brucie’s ‘Play your cards right’ it’s basically
that. If you get 10 guesses right you win the game.
Starting number : 12
Higher(H) or lower(L)? L
Next number 8
Higher(H) or lower(L)? L
Next number 11
You lose

Extensions
Give the players two lives
Make sure only H or L can
be entered
*/

import 'dart:io';
import 'dart:math';

final CoreOfGame coreOfGame = CoreOfGame();
main() {
  coreOfGame.game();
}

class CoreOfGame {
  int userInput;
  Random _random = Random();
  int randomValue;
  bool isWinner = false;
  void game() {
    randomValue = _random.nextInt(9) + 1;
    print(randomValue);
    do {
      stdout.write('Enter number from 1 to 10:');
      userInput = int.parse(stdin.readLineSync());
      if (userInput == randomValue) {
        isWinner = true;

        print('your are winner');
      } else if (userInput >= randomValue) {
        isWinner = false;
        print('your input bigger than random nuber');
      } else if (userInput <= randomValue) {
        isWinner = false;
        print('your input lower than random number');
      }
    } while (userInput != randomValue);
  }
}
