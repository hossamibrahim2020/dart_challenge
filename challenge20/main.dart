/*
Write a program that uses only two output statements, cout << "#" and cout << "\n", to produce a
pattern of hash symbols shaped like half of a perfect 5 × 5 square (or a right triangle):
#####
####
###
##
#
 */
import 'dart:io';

main() {
  rectangleDraw();
}
void rectangleDraw() {
  for (int row = 0; row < 5; row++) {
    for (int hash = 0; hash < 5- row; hash++) {
      stdout.write('#');
    }
    stdout.write('\n');
  }
}
