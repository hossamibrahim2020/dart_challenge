/*
Challenge 4
Write a program that will work out the
distance travelled if the user enters in the
speed and the time.
Extension
Get the program to tell you the speed you would have to travel
at in order to go a distance within a certain time entered by the
user.
*/

import 'dart:io';

main() {
  final Switcher _switcher = Switcher();
  _switcher.switcher();
}

class Switcher {
  final TakeUserSpeedAndTime _takeUserSpeedAndTime = TakeUserSpeedAndTime();
  final DistanceCalculator _distanceCalculator = DistanceCalculator();
  final SpeedRequiredCalculator _speedRequiredCalculator =
      SpeedRequiredCalculator();
  void switcher() {
    try {
      stdout.write('''
if you want to know distance write d,
if you want to know how to reach distace by increase spead write s
    ''');

      String determiner = stdin.readLineSync();
      switch (determiner) {
        case 'd':
          {
            String distanceValue = _distanceCalculator.distaceCalculator(
              _takeUserSpeedAndTime.takeUserSpeed(),
              _takeUserSpeedAndTime.takeUserTime(),
            );
            print(distanceValue);
          }
          break;

        case 's':
          {
            String distanceValue =
                _speedRequiredCalculator.speedRequiredCalculator(
              _takeUserSpeedAndTime.takeUserDistance(),
              _takeUserSpeedAndTime.takeUserTime(),
            );
            print(distanceValue);
          }
          break;
      }
    } catch (e) {
      print('please rerun app and enter d or s only and in small leters');
    }
  }
}

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

class SpeedRequiredCalculator {
  String speedRequiredCalculator(double distance, double time) {
    return 'speed is ${distance / time}';
  }
}

class DistanceCalculator {
  String distaceCalculator(double speed, double time) {
    return 'speed is ${speed * time}';
  }
}
