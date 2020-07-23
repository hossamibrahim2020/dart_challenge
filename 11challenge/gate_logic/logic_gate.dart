import 'dart:io';

import 'package:flutterinnative/challenge11/gate_logic/or.dart';

class LogicGate {
  String userInput;
  OR _or = OR();
  void logicGate() {
    stdout.write('Enter Name Of Gate: ');
    userInput = stdin.readLineSync();
    switch (userInput) {
      case 'OR':
        {
          _or.orChecker();
        }
        break;
      case 'AND':
        {
          _or.orChecker();
        }
        break;
      default:
        {
          print('we have or & $userInput well come soon');
        }
        break;
    }
  }
}
