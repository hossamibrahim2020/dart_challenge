import 'dart:io';
import 'dart:math';

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
