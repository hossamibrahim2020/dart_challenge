/*
Write a program that will generate a
random playing card e.g. ‘9 Hearts’,
‘Queen Spades’ when the return key is
pressed.
Rather than generate a random number
from 1 to 52. Create two random numbers – one for the suit and one for the
card.

Extension
Make a loop structure so playing cards can keep being generated
 */
import 'dart:io';
import './looper/loop_to_create_alot_of_cards.dart';

final LoopToCreateCards loopToCreateCards = LoopToCreateCards();
main(){
  stdout.write('20 card\n');
  loopToCreateCards.loopToCreateCards();
}