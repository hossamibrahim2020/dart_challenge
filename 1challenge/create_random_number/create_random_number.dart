import 'dart:math';
import 'package:flutterinnative/challenge1/colors_state/colors_state_class.dart';
import 'package:flutterinnative/challenge1/list_of_jocks_class/list_of_jocks_class.dart';

class CreatRanomNumber {
  static ListOfJocks _listOfJocks = ListOfJocks();
  static ColorsState _colorsState = ColorsState();
  static Random _randomNumber = Random();
  int randomNumbervalue = _randomNumber.nextInt(_listOfJocks.listOfJocks.length);
  int randomNumbervalueToColor = _randomNumber.nextInt(_colorsState.listOfColor.length);
}