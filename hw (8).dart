import 'dart:io';
void main(List<String> args) {
  stdout.write('Enter your names : ') ;
  String? name = stdin.readLineSync() ;
  int count = 1 ;
  
  do{
  //stdout.write('Enter your names : ') ;
  //String? name = stdin.readLineSync() ;
print('รายชื่อลำดับที่ $count = $name') ;
count++ ;

  } while(count < 101 ) ;
  //print('จำนวนชื่อทั้งหมด = $count') ;
}