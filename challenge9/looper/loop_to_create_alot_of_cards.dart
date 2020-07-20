import 'dart:math';

class LoopToCreateCards {
   static List cardName = [
     'Heart',//0
     'Circle',//1
     'Certain',//2
   ];
  void loopToCreateCards() {
    for (int i = 0; i <= 52; i++) {
      int random = Random().nextInt(52);
      int randomIndex = Random().nextInt(cardName.length);
      print('$random ${cardName[randomIndex]}');
    }
  }
}
