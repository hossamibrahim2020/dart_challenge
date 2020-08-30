/*
make a translation app that translate all user input by convert all
c letters to a letter
 */
import 'dart:io';

final Translator translator = Translator();
main() => translator.translate();

class Translator {
  String userInput;
  void translate() {
    stdout.write('Enter sentence to translate: ');
    userInput = stdin.readLineSync();
    userInput.split('').forEach((character) {
      if (character == 'o') {
        character = 'c';
      }
      stdout.write(character);
    });
  }
}
