import 'dart:io';

import 'package:flutterinnative/challenge7/action_in_user_input/action_in_user_input.dart';

final ActionInUserInput actionInUserInput = ActionInUserInput();

class Determiner {
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
