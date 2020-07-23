import 'dart:io';

class TakeUserInputToWidth{
  int takeUserInput(){
    stdout.write('enter width: ');
    String width = stdin.readLineSync();
    try {
      int widthValueInInteger = int.parse(width);
      return widthValueInInteger;
    }catch(e){
      print('please enter number');
      return null;
    }
  }
}