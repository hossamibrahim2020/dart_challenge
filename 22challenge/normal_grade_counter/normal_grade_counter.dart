class NormalGradeCounter {
  int a = 80, b = 70, c = 60, d = 50, finalGrade = 100;
  void normalgradeCounterLogic({int gradeFromUser, gradeFromUser2}) {
    if (gradeFromUser >= a && gradeFromUser <=finalGrade) {
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

    if (gradeFromUser2 >= a&& gradeFromUser2 <=finalGrade) {
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
