import 'dart:io';

class MirrorTriangle {
  int numberOfSpaces;
  int number = 10;
  void mirrorTriangle() {
    numberOfSpaces = 2 * number - 2;
    for (int row = 0; row < number; row++) {
      for (int spaceController = 0;
          spaceController < numberOfSpaces;
          spaceController++) {
        stdout.write(' ');
        numberOfSpaces = numberOfSpaces - 2;
        for (int column = 0; column <= row; column++) {
          stdout.write('#');
        }
        stdout.write('\n');
      }
    }
  }
}
