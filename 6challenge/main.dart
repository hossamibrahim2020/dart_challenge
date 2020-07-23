/*
Challenge 6

Make a game for seeing how good people are at
guessing when 10 seconds have elapsed.

Algorithm
 Tell them to hit enter key when ready
 Get the first time in seconds
 Get them to hit the enter key when they think time has elapsed
 Get the second time in seconds
 Subtract first time from the second time
 Tell them how close to 10 the answer was.

Extension
Sometimes this solution doesn't
work. Can you work out why it
doesn’t work? Can you fix it?

Prior Knowledge Needed
How to create variables
How to input data into a variable
How to display variables
How to use system functions.
How to use system variables
 */
import 'package:flutterinnative/challenge6/switcher_by_user_input/switcher.dart';

final Switcher switcher = Switcher();
main() {
  switcher.switcher();
}
