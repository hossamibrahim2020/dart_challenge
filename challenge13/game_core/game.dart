import 'dart:io';
import 'dart:math';

class Game {
  Random random = Random();
  int userInput;
  void gamelogic() {
    int randomvalue = random.nextInt(4) + 1;
    try {
      stdout.write('Enter number between 1 to 5: ');
      userInput = int.parse(stdin.readLineSync());
      if (userInput > 0 || userInput<6) {
        userInput == randomvalue?print('You are Winner'):print('you are losser correct one is $randomvalue');
      }else{
        print('Enter number');
      }
    } catch (e) {}
  }

}
