/*
Write a program that uses only two output statements, cout << "#" and cout << "\n", to produce a
pattern of hash symbols shaped like a perfect 5x5 square:
#####
#####
#####
#####
#####
 */

import 'dart:io';

main() {
  for (int row = 0; row < 5; row++) {
    for (int index = 0; index < 5; index++) {
      stdout.write('#');
    }

    stdout.write('\n');
  }
}
