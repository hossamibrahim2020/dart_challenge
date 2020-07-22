

import 'dart:io';

class DrawCustomShap{
  final DrawStars draw = DrawStars();
  void customShap(){
    draw.stars(spacesValue: 3,starsValue: 1);
    draw.stars(spacesValue: 2,starsValue: 3);
    draw.stars(spacesValue: 2,starsValue: 3);
    draw.stars(spacesValue: 3,starsValue: 1);
    draw.stars(spacesValue: 2,starsValue: 3);
    draw.stars(spacesValue: 0,starsValue: 7);
    draw.stars(spacesValue: 2,starsValue: 2);
    draw.stars(spacesValue: 1,starsValue: 4);
  }
}


class DrawStars{
  stars({int spacesValue,starsValue}){
    for(int spaces=0;spaces<spacesValue;spaces++){
      stdout.write('  ');
    }
    for(int stars=0;stars<starsValue;stars++){
      stdout.write(' *');
    }
    stdout.write('\n');
  }
}
