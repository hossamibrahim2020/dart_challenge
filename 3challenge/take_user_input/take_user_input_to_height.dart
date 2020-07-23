import 'dart:io';

class TakeUserInputToHeitght{
  int takeUserInput(){
    stdout.write('enter height: ');
    String height = stdin.readLineSync();
    try {
      int heightValueInInteger = int.parse(height);
      return heightValueInInteger;
    }catch(e){
      print('please enter number');
      return null;
    }

  }
}