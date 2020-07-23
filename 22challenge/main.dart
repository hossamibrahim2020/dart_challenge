/*Write a function that will convert a UMS score into a grade. The
function will return ‘A’—> ‘U’.
The function will require a parameter to do its job: the mark
The formula for AS level is >=80% —>‘A’, >=70%—>‘B’, >=60%—>‘C’
etc.
Assume the maximum module mark is 100
Having written the function we want to use it three times.
Write a program with the function that allows the user to enter
two module AS scores and displays the grade. It then adds the two
results together and displays the students overall grade. E.g.
Enter Module 1 result: 78
Enter Module 1 result: 67
Result
Module 1 : B
Module 2: C
AS Level : B
*/

import 'package:flutterinnative/challenge22/normal_grade_counter/userInputForNormalCounter.dart';

final UserInputForNormalCounter userInputForNormalCounter = UserInputForNormalCounter();
main(){
  userInputForNormalCounter.userInputForNormalCounter();
}

