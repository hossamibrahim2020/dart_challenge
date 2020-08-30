/*
Write a program to work out how many days you have lived for.
*/

import 'dart:io';

main() {
  final DiffrenceOfAge diffrenceOfAge = DiffrenceOfAge();
  print(diffrenceOfAge.diffrence());
}

class DiffrenceOfAge {
  var now = DateTime.now();
  final UserDate _userDate = UserDate();
  String diffrence() {
    try {
      int diffrenceInDay = (now.day - _userDate.userDateDays());
      int diffrenceInMonth = (now.month - _userDate.userDateMonthe()) * 30;
      int diffrenceInYears = (now.year - _userDate.userDateYear()) * 365;
      return 'difference in day is ${diffrenceInDay + diffrenceInMonth + diffrenceInYears}';
    } catch (e) {
      return 'please enter your age in in math not in alphabet';
    }
  }
}

class UserDate {
  int userDateDays() {
    try {
      stdout.write('Enter day that you birth in: ');
      int dayFromUserAge = int.parse(stdin.readLineSync());
      return dayFromUserAge;
    } catch (e) {
      return null;
    }
  }

  int userDateMonthe() {
    try {
      stdout.write('Enter month that you birth in: ');
      int monthFromUserAge = int.parse(stdin.readLineSync());
      return monthFromUserAge;
    } catch (e) {
      return null;
    }
  }

  int userDateYear() {
    try {
      stdout.write('Enter year that you birth in: ');
      int yearFromUserAge = int.parse(stdin.readLineSync());
      return yearFromUserAge;
    } catch (e) {
      return null;
    }
  }
}
