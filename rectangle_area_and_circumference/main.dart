/*
Write a program to work out the areas and circumference of a rectangle.
Collect the width and height of the rectangle from the keyboard
Calculate the area
display the result.

Extension
See what happens when you
don't type in numbers! - Try
to explain what has happened and why
*/

import 'dart:io';

main() {
  final TakeUserInputToHeitght takeUserInputToHeitght =
      TakeUserInputToHeitght();
  final TakeUserInputToWidth takeUserInputToWidth = TakeUserInputToWidth();
  final RectangleCalculator rectangleArea = RectangleCalculator(
    height: takeUserInputToHeitght.takeUserInput(),
    width: takeUserInputToWidth.takeUserInput(),
  );

  print(rectangleArea.rectangelCalculator());
}

class TakeUserInputToHeitght {
  int takeUserInput() {
    stdout.write('enter height: ');
    String height = stdin.readLineSync();
    try {
      int heightValueInInteger = int.parse(height);
      return heightValueInInteger;
    } catch (e) {
      print('please enter number');
      return null;
    }
  }
}

class TakeUserInputToWidth {
  int takeUserInput() {
    stdout.write('enter width: ');
    String width = stdin.readLineSync();
    try {
      int widthValueInInteger = int.parse(width);
      return widthValueInInteger;
    } catch (e) {
      print('please enter number');
      return null;
    }
  }
}

class RectangleCalculator {
  int height;
  int width;
  RectangleCalculator({this.height, this.width});
  String rectangelCalculator() {
    try {
      int area = height * width;
      int circumference = (2 * height) + (2 * width);
      return '''
Rectangle area is $area,
Rectangle circumference is $circumference,
    ''';
    } catch (e) {
      return 'please rerun app again';
    }
  }
}
