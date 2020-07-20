import 'dart:io';

class TakeUserName{
  void takeUserName(){
    stdout.write('Enter your name: ');
    String username = stdin.readLineSync();
    print('hello, '+ username);
  }
}