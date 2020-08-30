/*
find average of 3 numbers that user enter
*/

import 'dart:io';

final Average average = Average();
main() {
  average.averageCalculator();
}

class Average {
  int number1, number2, number3, sumOfNumbers;
  double result;
  void averageCalculator() {
    try {
      stdout.write('Enter first number: ');
      number1 = int.parse(stdin.readLineSync());
      stdout.write('Enter second number: ');
      number2 = int.parse(stdin.readLineSync());
      stdout.write('Enter third number: ');
      number3 = int.parse(stdin.readLineSync());
      sumOfNumbers = number1 + number2 + number3;
      result = sumOfNumbers / 3;
      print('average is $result');
    } catch (e) {}
  }
}
