/*
Write a program that will give the
students the answer to logic gate
questions e.g.
Enter logic gate : OR
Enter first input : 1
Enter second input :0
Result = 1
 */
import 'dart:io';

final LogicGate logicGate = LogicGate();
main() {
  logicGate.logicGate();
}

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

class OR {
  int orOne;
  int orTwo;
  void orChecker() {
    try {
      stdout.write('Enter First number: ');
      orOne = int.parse(stdin.readLineSync());
      stdout.write('Enter Second number: ');
      orTwo = int.parse(stdin.readLineSync());
      if ((orOne == 1 || orOne == 0) && (orTwo == 1 || orTwo == 0)) {
        orLogic();
      } else {
        stdout.write('1,0 only are available');
      }
    } catch (e) {
      stdout.write('1,0 only are available');
    }
  }

  orLogic() {
    orOne + orTwo >= 1 ? print(1) : print(0);
  }
}
