import 'dart:io';

class VoteDeterminer{
  int age;
  void voteDeterminer(){
    stdout.write('Enter yor age: ');
    age = int.parse(stdin.readLineSync());
    if(age >= 18){
      print('You can to Vote');
    }else{
      print('you are small');
    }
  }
}