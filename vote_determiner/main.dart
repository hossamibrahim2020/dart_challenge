/*
Write a program that will accept someone’s date of birth and
work out whether they can vote (i.e. Are they 18?)
*/

import 'dart:io';

main() {
  final VoteDeterminer voteDeterminer = VoteDeterminer();
  voteDeterminer.voteDeterminer();
}

class VoteDeterminer {
  int age;
  void voteDeterminer() {
    stdout.write('Enter yor age: ');
    age = int.parse(stdin.readLineSync());
    if (age >= 18) {
      print('You can to Vote');
    } else {
      print('you are small');
    }
  }
}
