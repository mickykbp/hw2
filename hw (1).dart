import 'dart:math';
void main(List<String> args) {
  Random random = Random() ;

  int randomNumber = random.nextInt(19) + 2 ;
  print('ตารางสูตรคูณแม่ $randomNumber : ');
  for(int i = 1 ; i <= 12 ; i++){
    int result = randomNumber * i ;
    print('$randomNumber x $i = $result') ;
  }
}