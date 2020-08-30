/*
Write a program that will display all the factors of a number, entered by the user, that are bigger than 1.
(e.g. the factors of the number 12 are 6,4,3 and 2 because they divide into 12 exactly).
Extension
Tell the user if the number they
entered is a prime number
 */

import 'dart:io';

final FactorsAndPrime factorsAndPrime = FactorsAndPrime();

main() {
  factorsAndPrime.factors();
}

class FactorsAndPrime {
  int userInputNumber, index;
  List<int> indexArray = [];
  void factors() {
    stdout.write('Enter number to check it: ');
    userInputNumber = int.parse(stdin.readLineSync());
    for (index = 1; index <= userInputNumber; index++) {
      if (userInputNumber % index == 0) {
        print('factors of $userInputNumber is $index');
        indexArray.add(index);
      }
    }
    prime();
  }

  void prime() {
    indexArray.length == 2
        ? stdout.write('it is prime')
        : stdout.write('not a prime number');
  }
}
