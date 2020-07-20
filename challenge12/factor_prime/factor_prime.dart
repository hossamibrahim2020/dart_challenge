import 'dart:io';

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
        : stdout.write('not a prime nuber');
  }
}
