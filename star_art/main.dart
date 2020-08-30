/*
Write a procedure(sub) drawstars that will draw a sequence of
spaces followed by a sequence of stars. It should accept two parameters—the number of spaces and the number of stars.
E.g
Drawstars(3,5) would produce
_ _ _ * * * * * ( _ indicates a space!)
Use your procedure to draw
         *
       * * *
       * * *
         *
       * * *
   * * * * * * *
       * * *
        * *
      * * * *

 */

import 'dart:io';

main() {
  final DrawCustomShap drawCustomShap = DrawCustomShap();
  drawCustomShap.customShap();
}

class DrawCustomShap {
  final DrawStars draw = DrawStars();
  void customShap() {
    draw.stars(spacesValue: 3, starsValue: 1);
    draw.stars(spacesValue: 2, starsValue: 3);
    draw.stars(spacesValue: 2, starsValue: 3);
    draw.stars(spacesValue: 3, starsValue: 1);
    draw.stars(spacesValue: 2, starsValue: 3);
    draw.stars(spacesValue: 0, starsValue: 7);
    draw.stars(spacesValue: 2, starsValue: 2);
    draw.stars(spacesValue: 1, starsValue: 4);
  }
}

class DrawStars {
  stars({int spacesValue, starsValue}) {
    for (int spaces = 0; spaces < spacesValue; spaces++) {
      stdout.write('  ');
    }
    for (int stars = 0; stars < starsValue; stars++) {
      stdout.write(' *');
    }
    stdout.write('\n');
  }
}
