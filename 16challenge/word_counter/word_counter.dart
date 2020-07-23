import 'dart:io';

class WordCounter {
  String userInput;
  List arrayOfStrings = [];

  void counter() {
    print('Enter "y" to exit');
    do {
      stdout.write('Enter word to count it:');
      userInput = stdin.readLineSync();
      arrayOfStrings.add(userInput);
    } while (userInput != 'y');
    print(arrayOfStrings.length - 1);
  }
}
