import 'package:flutterinnative/challenge1/colors_state/colors_state_class.dart';
import 'package:flutterinnative/challenge1/create_random_number/create_random_number.dart';
import 'package:flutterinnative/challenge1/list_of_jocks_class/list_of_jocks_class.dart';

class JockerDetermener {
  ListOfJocks _listOfJocks = ListOfJocks();
  ColorsState _colorsState = ColorsState();
  CreatRanomNumber _creatRanomNumber = CreatRanomNumber();
  void determenation(String takeUserInput) {
    if (takeUserInput == 'y') {
      print(
          '${_listOfJocks.listOfJocks[_creatRanomNumber.randomNumbervalue.toInt()]} and color is ${_colorsState.listOfColor[_creatRanomNumber.randomNumbervalueToColor.toInt()]}');
    } else {
      print('you shoud press y then enter to see a jock');
    }
  }
}
