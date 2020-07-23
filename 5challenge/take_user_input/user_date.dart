import 'dart:io';

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
