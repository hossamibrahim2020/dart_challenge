import 'dart:io';

/// write a programm that take user name and say wellcome + user name

final TakeUserName takeUserName = TakeUserName();
main() {
  takeUserName.takeUserName();
}

class TakeUserName {
  void takeUserName() {
    stdout.write('Enter your name: ');
    String username = stdin.readLineSync();
    print('hello, ' + username);
  }
}
