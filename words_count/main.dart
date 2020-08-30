/*
Write a program to count the number of words in a sentence.
The user enters a sentence.
The program responds with the number of words in the sentence.
 */
import 'dart:io';

main() {
  final WordCounter wordCounter = WordCounter();
  wordCounter.counter();
}

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
