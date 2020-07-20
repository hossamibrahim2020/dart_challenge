import 'dart:io';

class TakeUserSpeedAndTime {
  double takeUserSpeed() {
    try {
      stdout.write('Enter speed: ');
      return double.parse(stdin.readLineSync());
    } catch (e) {
      print('please re run app and enter numbers ');
      return null;
    }
  }
  double takeUserTime() {
    try {
      stdout.write('Enter time: ');
      return double.parse(stdin.readLineSync());
    } catch (e) {
      print('please re run app and enter numbers ');
      return null;
    }
  }
  double takeUserDistance() {
    try {
      stdout.write('Enter distance: ');
      return double.parse(stdin.readLineSync());
    } catch (e) {
      print('please re run app and enter numbers ');
      return null;
    }
  }
}
