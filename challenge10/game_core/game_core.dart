import 'dart:io';
import 'dart:math';

class GameCore {
  static List options = [
    'rock', //0
    'paper', //1
    'scissors', //2
  ];
  static int random = Random().nextInt(2);
  String optionInActoin = '${options[random]}';
  String userInput;
  void core() {
    stdout.write('Enter rock or paper or scissors: ');
    userInput = stdin.readLineSync();
    if (userInput == 'rock' ||
        userInput == 'paper' ||
        userInput == 'scissors') {
      if (userInput == optionInActoin) {
        stdout.write('your are winner 🎉');
      } else {
        stdout.write('yor are losser');
      }
    } else {
      print('please enter rock & paper & scissors');
    }
  }
}
