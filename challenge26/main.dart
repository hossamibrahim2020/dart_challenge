/*
Write a program that will store names into an array.
As a new name is entered it will be added to the end of the array.
The user can keep adding names until they enter the dummy
value ‘exit’
Once this has been done the program will display any duplicate
names.
E.g.
Bill
Mary
Anisha
Mary
exit
Mary is a duplicate.
 */
import 'dart:io';

final DuplicateDeterminer _determiner = DuplicateDeterminer();

main() => _determiner.duplicate();

class DuplicateDeterminer {
  static List<String> arrayOfNames = [
    'ibrahim',
    'hossam',
    'mohammed',
    'ahmed',
    'hossam',
  ];
  List<String> arrayOfduplicatedNames = arrayOfNames.toSet().toList();

  void duplicate() {
    for (int i = 0; i < arrayOfNames.length; i++) {
      arrayOfduplicatedNames.add('');
      if (arrayOfNames[i] != arrayOfduplicatedNames[i]) {
        print('${arrayOfNames[i]} is duplicated');
      } else if (arrayOfNames[i] == arrayOfduplicatedNames[i]) {
        stdout.write('');
      }
    }
  }
}
