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
import 'package:flutterinnative/challenge3/rectangle_area/rectangel_calculator.dart';
import 'package:flutterinnative/challenge3/take_user_input/take_user_input_to_height.dart';
import 'package:flutterinnative/challenge3/take_user_input/take_user_input_to_width.dart';

main() {
  final TakeUserInputToHeitght takeUserInputToHeitght = TakeUserInputToHeitght();
  final TakeUserInputToWidth takeUserInputToWidth = TakeUserInputToWidth();
  final RectangleCalculator rectangleArea = RectangleCalculator(
    height: takeUserInputToHeitght.takeUserInput(),
    width: takeUserInputToWidth.takeUserInput(),
  );

  print(rectangleArea.rectangelCalculator());
}
