import 'dart:io';

class TakeUserInput {
  String takeUserInput(){
    stdout.write('Enter y: ');
    String input = stdin.readLineSync();
    return input;
  }
}