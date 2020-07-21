/*
Write a program that uses only two output statements, cout << "#" and cout << "\n", to produce a line
of five hash symbols:
#####
 */
import 'dart:io';

main() {
  for (int index = 1; index <= 5; index++) {
    stdout.write('#');
  }
  stdout.write('\n');
}
