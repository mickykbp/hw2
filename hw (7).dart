import 'dart:io';
void main(List<String> args) {
  stdout.write('Enter your number : ') ;
  int? number = int.parse(stdin.readLineSync()!) ;

  if(number > 0 ){
    print('ตัวเลขมีค่า + ') ;
  }
  else if (number < 0 ){
    print('ตัวเลขมีค่า - ') ;
  }
  else {
    print('ตัวเลขมีค่าเป็น 0') ;
  }
}