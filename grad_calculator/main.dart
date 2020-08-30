/*Write a function that will convert a UMS score into a grade. The
function will return ‘A’—> ‘U’.
The function will require a parameter to do its job: the mark
The formula for AS level is >=80% —>‘A’, >=70%—>‘B’, >=60%—>‘C’
etc.
Assume the maximum module mark is 100
Having written the function we want to use it three times.
Write a program with the function that allows the user to enter
two module AS scores and displays the grade. It then adds the two
results together and displays the students overall grade. E.g.
Enter Module 1 result: 78
Enter Module 1 result: 67
Result
Module 1 : B
Module 2: C
AS Level : B
*/

import 'dart:io';

main() {
  final UserInputForNormalCounter userInputForNormalCounter =
      UserInputForNormalCounter();

  userInputForNormalCounter.userInputForNormalCounter();
}

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

class NormalGradeCounter {
  int a = 80, b = 70, c = 60, d = 50, finalGrade = 100;
  void normalgradeCounterLogic({int gradeFromUser, gradeFromUser2}) {
    if (gradeFromUser >= a && gradeFromUser <= finalGrade) {
      print('Model1: A level');
    } else if (gradeFromUser >= b && gradeFromUser < a) {
      print('Model1: b level');
    } else if (gradeFromUser >= c && gradeFromUser < b) {
      print('Model1: c level');
    } else if (gradeFromUser >= d && gradeFromUser < c) {
      print('Model1: d level');
    } else {
      print('Model1: f level');
    }

    if (gradeFromUser2 >= a && gradeFromUser2 <= finalGrade) {
      print('Model2: A level');
    } else if (gradeFromUser2 >= b && gradeFromUser2 <= a) {
      print('Model2: b level');
    } else if (gradeFromUser2 >= c && gradeFromUser2 < b) {
      print('Model2: c level');
    } else if (gradeFromUser2 >= d && gradeFromUser2 < c) {
      print('Model2: d level');
    } else {
      print('Model2: f level');
    }

    if (((gradeFromUser + gradeFromUser2) / 2) >= a &&
        ((gradeFromUser + gradeFromUser2) / 2) <= finalGrade) {
      print('AS: A level');
    } else if (((gradeFromUser + gradeFromUser2) / 2) >= b &&
        ((gradeFromUser + gradeFromUser2) / 2) < a) {
      print('AS: b level');
    } else if (((gradeFromUser + gradeFromUser2) / 2) >= c &&
        ((gradeFromUser + gradeFromUser2) / 2) < b) {
      print('AS: c level');
    } else if (((gradeFromUser + gradeFromUser2) / 2) >= d &&
        ((gradeFromUser + gradeFromUser2) / 2) < c) {
      print('AS: d level');
    } else {
      print('AS: f level');
    }
  }
}
