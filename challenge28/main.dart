/*
by using do while loop create a simple game that can create a number then
take user guess and compare among them and tell user your input is too height or
to low
e.g.
enter your guess
20
to low
30
to height
25
yes
 */

import 'dart:io';
import 'dart:math';

final GuessGameViewModel guess = GuessGameViewModel();

main() => guess.guess();

class GuessGameViewModel {
  Random _random = Random();
  int _computerGuess, _userGuessValue;
  void guess() {
    print('Enter your guess');
    _computerGuess = _random.nextInt(40);
    do {
      try {
        _userGuessValue = int.parse(stdin.readLineSync());
        _userGuessValue == _computerGuess
            ? print('yes you are right')
            // ignore: unnecessary_statements
            : (_userGuessValue > _computerGuess
                ? print('too height')
                : print('too low'));
      } catch (e) {
        print(e.toString());
      }
    } while (_userGuessValue != _computerGuess);
  }
}
