import 'dart:io';
import 'package:flutterinnative/challenge6/timer/timer_future.dart';

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
