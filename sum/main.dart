/*
 creat app that take user input and sum from 1 to user input
*/
import 'dart:io';

main(){
  final RunSum _runSum = RunSum();
  _runSum.run();
}

class RunSum{
  String stringInput;
  double doubleInput;
  SumNumbers _sum = SumNumbers();
  void run(){
    stringInput = stdin.readLineSync();
    doubleInput = double.parse(stringInput); 
    print(_sum.sumIt(doubleInput));
  }
}

class SumNumbers{
  double sumIt(double userInput){
    return userInput * ( userInput + 1 )/2;
  }
}

