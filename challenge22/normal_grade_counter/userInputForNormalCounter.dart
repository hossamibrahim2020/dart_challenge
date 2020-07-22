import 'dart:io';

import 'package:flutterinnative/challenge22/normal_grade_counter/normal_grade_counter.dart';

class UserInputForNormalCounter {
  final NormalGradeCounter normalGradeCounter = NormalGradeCounter();

  void userInputForNormalCounter() {
    stdout.write('Enter grade1: ');
    int gradeFromUser = int.parse(stdin.readLineSync());

    stdout.write('Enter 2: ');
    int gradeFromUser2 = int.parse(stdin.readLineSync());

    normalGradeCounter.normalgradeCounterLogic(
      gradeFromUser: gradeFromUser,
      gradeFromUser2: gradeFromUser2,
    );
  }
}
