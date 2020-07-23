import 'dart:io';

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
