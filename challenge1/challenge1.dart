///  Write a program that will display a joke Don’t display the punchline until the reader hits the enter key.
/// Extension display the punchline in a different colour

/// algorithem
/// 1.create list form jocks
/// 2.create random number
/// 3.take user input
/// 4.if user hit enter print joks by random[using index]

import 'package:flutterinnative/challenge1/user_input/user_input.dart';
import 'jock_determer/jock_determer.dart';

main() {
  TakeUserInput takeUserInput = TakeUserInput();
  JockerDetermener jockerDetermener = JockerDetermener();
  String inputFromUser = takeUserInput.takeUserInput();
  jockerDetermener.determenation(inputFromUser);
}





