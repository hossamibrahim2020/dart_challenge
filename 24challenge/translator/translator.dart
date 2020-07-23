import 'dart:io';
class Translator{
  String userInput;
  void translate(){
    stdout.write('Enter sentence to translate: ');
    userInput = stdin.readLineSync();
    userInput.split('').forEach((character) {
      if(character== 'o'){
        character = 'c';
      }
      stdout.write(character);
    });
  }
}