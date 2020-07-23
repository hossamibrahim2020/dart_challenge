import 'dart:io';

import 'package:flutterinnative/challenge4/distace_calculator/distance_calculator.dart';
import 'package:flutterinnative/challenge4/speed_required_calculator/speed_required_calculator.dart';
import 'package:flutterinnative/challenge4/take_user_speed_and_time/take_user_speen_and_time.dart';

class Switcher {
  final TakeUserSpeedAndTime _takeUserSpeedAndTime = TakeUserSpeedAndTime();
  final DistanceCalculator _distanceCalculator = DistanceCalculator();
  final SpeedRequiredCalculator _speedRequiredCalculator = SpeedRequiredCalculator();
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
            String distanceValue = _speedRequiredCalculator.speedRequiredCalculator(
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
