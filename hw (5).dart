void main(List<String> args) {
  String name = 'Digital Processing Visualizer';
  //String lowerName = name.toLowerCase();
  int lengthName = name.length;
  //String sub1 = name.substring(4,7);
  //String sub2 = name.substring(0,7);
  //String sub3 = name.substring(8,18);
  //String sub4 = name.substring(19);

  //print('lowername = $lowerName,legthname = $lengthName');
  //print('sub1 = $sub1,sub2 =$sub2,sub3=$sub3,sub4 = $sub4');

  //print(name.substring(0,1));
  //print(name.substring(1,2));
  
  int numvowel = 0 , numch = 0 ;
  for (int i = 0; i < name.length; i++) {
  String ch = name.substring(i,i+1);
  switch (ch) {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
      numvowel +=1;
      break;
      
    default:
    numch +=1;
  }
   print('จำนวนตัวอักษรทั้งหมด => ${name.length}');
   print('จำนวนสระ => $numvowel');
   print('จำนวนพยัญชนะ => $numch');
  }
  }