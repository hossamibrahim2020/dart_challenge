///  Write a program that will display a joke Don’t display the punchline until the reader hits the enter key.
/// Extension display the punchline in a different colour

/// algorithem
/// 1.create list form jocks
/// 2.create random number
/// 3.take user input
/// 4.if user hit enter print joks by random[using index]
import 'dart:io';
import 'dart:math';

main() {
  TakeUserInput takeUserInput = TakeUserInput();
  JockerDetermener jockerDetermener = JockerDetermener();
  String inputFromUser = takeUserInput.takeUserInput();
  jockerDetermener.determenation(inputFromUser);
}

class TakeUserInput {
  String takeUserInput() {
    stdout.write('Enter y: ');
    String input = stdin.readLineSync();
    return input;
  }
}

class ListOfJocks {
  List<String> listOfJocks = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20'
  ];
}

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

class ColorsState {
  List<String> listOfColor = [
    'red',
    'blue',
    'purple',
    'green',
  ];
}

class CreatRanomNumber {
  static ListOfJocks _listOfJocks = ListOfJocks();
  static ColorsState _colorsState = ColorsState();
  static Random _randomNumber = Random();
  int randomNumbervalue =
      _randomNumber.nextInt(_listOfJocks.listOfJocks.length);
  int randomNumbervalueToColor =
      _randomNumber.nextInt(_colorsState.listOfColor.length);
}
