/*
make a converter app that can convert between Celsius and Fahrenheit and still
 */

import 'dart:io';

final Controller _controller = Controller();

main() => _controller.controller();

class Controller {
  String userInput;
  double userDegree;
  void controller() {
    print(
        'Enter a for convert Fahrenheit and Celsius\nEnter b for convert Celsius and Fahrenheit');
    userInput = stdin.readLineSync();
    userInput == 'a' ? print(FToCByAInput()) : print(CToFByAInput());
  }

  // ignore: missing_return
  double FToCByAInput() {
    print('Enter degree');
    try {
      userDegree = double.parse(stdin.readLineSync());
      return (userDegree * 1.8) + 32;
    } catch (e) {}
  }

  // ignore: missing_return
  double CToFByAInput() {
    print('Enter degree');
    try {
      userDegree = double.parse(stdin.readLineSync());
      return (userDegree - 32) / 1.8;
    } catch (e) {}
  }
}
