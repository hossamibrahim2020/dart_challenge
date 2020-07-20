import 'dart:io';

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
