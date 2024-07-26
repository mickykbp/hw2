import 'dart:io';
void main(List<String> args){
  var sum = 0 ;
  var total = 0 ;
  stdout.write('Enter start number>> ') ;
  String? strStart = stdin.readLineSync() ;
  int intStart = int.parse(strStart!) ;

  stdout.write('Enter stop number>> ') ;
  String? strStop = stdin.readLineSync() ;
  int intStop = int.parse(strStop!) ;

  for(int x = intStart ; x <= intStop ; x++){
   print('x = $x ') ;
   sum = x ;
   sum = sum ~/ 10  ;
   total = total + sum ;
   print('sum = $sum') ;
   print('total = $total') ;
  }
}