/*
Extend the program in Challenge 5 to make agame for
seeing how quick people are at typing the alphabet.
 */

import 'dart:io';

main() {
  final Determiner determiner = Determiner();
  determiner.determiner();
}

class ActionInUserInput {
  String alpahbet;
  bool timefinsh = false;
  void actionInUserInput() {
    Future.delayed(
      Duration(seconds: 10),
      () {
        print('time finshed');
        timefinsh = true;
      },
    );
    stdout.write('Enter from a to d: ');
    alpahbet = stdin.readLineSync();
    if ((alpahbet == 'abcd' || alpahbet == 'ABCD') && timefinsh == false) {
      print('you are winner');
    } else if ((alpahbet != 'abcd' || alpahbet != 'ABCD') ||
        timefinsh == true) {
      print('you are losser');
    }
  }
}

class Determiner {
  final ActionInUserInput actionInUserInput = ActionInUserInput();
  String startPermisn;
  void determiner() {
    stdout.write('Enter y: ');
    startPermisn = stdin.readLineSync();
    switch (startPermisn) {
      case 'y':
        {
          actionInUserInput.actionInUserInput();
        }
        break;
      default:
        {
          print('please enter y');
        }
        break;
    }
  }
}
