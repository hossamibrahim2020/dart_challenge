import 'dart:io';
import 'package:flutterchallenges/siccors_rock_paper/model/abstract_optoins.dart';

class GameViewModel extends Options{
  String userInput;
  void computerGuess(){
    do {
      print('enter your guess');
      String computer = options[random.nextInt(options.length)];
      userInput = stdin.readLineSync();
      if (computer == userInput) {
        print('you are right');
      } else {
        print('computer guess is $computer');
      }
    }while(userInput != 'exit');
    print('game end');
  }
}