import 'package:flutterinnative/challenge5/take_user_input/user_date.dart';

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
