import 'dart:io';

void main(List<String> args) {
while (true) {
    stdout.write('กรุณาใส่ตัวเลข -->> ');
    String? inputNum = stdin.readLineSync();

    if (inputNum == null) {
      print('ค่าว่าง กรุณาใส่ตัวเลขใหม่');
      continue;
    }

    int? number = int.tryParse(inputNum); //จะพยายามทำให้ inputNum กลายเป็น int แต่ถ้าใส่ภาษา ก็จะ error

    if (number == null) {
      print('ไม่ใช่ตัวเลข กรุณาใส่ตัวเลขใหม่');
      continue;
    }

    if (number % 2 == 0) {
      print('$number เป็นเลขคู่');
    } else {
      print('$number เป็นเลขคี่');
    }
    break;
  }
}