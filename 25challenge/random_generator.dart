import 'dart:io';
import 'dart:math';

class RandomGenerator {
  String userInput;
  Random random = Random();
  int randomValue;
  void randomLove() {
    stdout.write('Enter name of something: ');
    userInput = stdin.readLineSync();
    randomValue = random.nextInt(100);
    if (randomValue >= 80 && randomValue <= 100) {
      messegeToUser(userInput, randomValue, 'too height');
    } else if (randomValue >= 50 && randomValue < 80) {
      messegeToUser(userInput, randomValue, 'height');
    } else if (randomValue >= 30 && randomValue < 50) {
      messegeToUser(userInput, randomValue, 'low');
    } else if (randomValue >= 10 && randomValue < 30) {
      messegeToUser(userInput, randomValue, 'too low');
    } else if (randomValue >= 0 && randomValue < 10) {
      messegeToUser(userInput, randomValue, 'very bad');
    }
  }

  void messegeToUser(String userInputValue, randomValueValue, valueOfLove) {
    print(
        'your love to $userInputValue is $randomValueValue%\nthis mean your love is $valueOfLove');
  }
}
