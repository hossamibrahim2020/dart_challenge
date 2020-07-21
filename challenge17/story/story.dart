import 'dart:io';

class Story {
  String userInput;
  String outputToUser = 'Enter send or return {goot , corn or fox}: ';
  String storyInString =
      'The fox, the goose, and the sack of corn. The boat can carry one item at a time. The fox cannot be left on the same shore as the goose, and the goose cannot be left on the same shore as the sack of corn';
  String sendGoot = 'send goot';
  String sendFox = 'send fox';
  String returnGoot = 'return goot';
  String sendCorn = 'send corn';
  void storyCore() {
    print(storyInString);
    stdout.write(outputToUser);
    userInput = stdin.readLineSync();
    if (userInput == sendGoot) {
      stdout.write(outputToUser);
      userInput = stdin.readLineSync();
      if (userInput == sendFox) {
        stdout.write(outputToUser);
        userInput = stdin.readLineSync();
        if (userInput == returnGoot) {
          stdout.write(outputToUser);
          userInput = stdin.readLineSync();
          if (userInput == sendCorn) {
            stdout.write(outputToUser);
            userInput = stdin.readLineSync();
            if (userInput == sendGoot) {
              print('you win');
            } else {
              printYouloss();
            }
          } else {
            printYouloss();
          }
        } else {
          printYouloss();
        }
      } else {
        printYouloss();
      }
    } else {
      printYouloss();
    }
  }

  void printYouloss() {
    print('you loss');
  }
}
