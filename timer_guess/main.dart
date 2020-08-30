/*
Challenge 6

Make a game for seeing how good people are at
guessing when 10 seconds have elapsed.

Algorithm
 Tell them to hit enter key when ready
 Get the first time in seconds
 Get them to hit the enter key when they think time has elapsed
 Get the second time in seconds
 Subtract first time from the second time
 Tell them how close to 10 the answer was.

Extension
Sometimes this solution doesn't
work. Can you work out why it
doesn’t work? Can you fix it?

Prior Knowledge Needed
How to create variables
How to input data into a variable
How to display variables
How to use system functions.
How to use system variables
 */

import 'dart:io';

main() {
  final Switcher switcher = Switcher();
  switcher.switcher();
}

class Switcher {
  String userInput;
  final TimerByFuture timerByFuture = TimerByFuture();
  void switcher() {
    try {
      stdout.write('Enter y to start: ');
      userInput = stdin.readLineSync();
    } catch (e) {
      print('please enter y only and re run app again');
    }
    switch (userInput) {
      case 'y':
        {
          timerByFuture.timer();
        }
        break;
      default:
        {
          print('rerun app again and enter y');
        }
        break;
    }
  }
}

class TimerByFuture {
  int _timeInSeconds = 10;
  void timer() {
    Future.delayed(Duration(seconds: _timeInSeconds), () {
      print('time finshed');
    });
  }
}
