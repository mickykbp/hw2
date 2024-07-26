import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();
  List<String> operators = ['+', '-', '*', '/'];

  while (true) {
    int num1 = random.nextInt(100) + 1;
    int num2 = random.nextInt(100) + 1;
    String operator = operators[random.nextInt(operators.length)];

    double correctAnswer;
    switch (operator) {
      case '+':
        correctAnswer = num1 + num2.toDouble();
        break;
      case '-':
        correctAnswer = num1 - num2.toDouble();
        break;
      case '*':
        correctAnswer = num1 * num2.toDouble();
        break;
      case '/':
        if (num2 == 0) num2 = 1; // หลีกเลี่ยงการหารด้วยศูนย์
        correctAnswer = num1 / num2;
        correctAnswer = double.parse(correctAnswer.toStringAsFixed(2));
        break;
      default:
        print('เครื่องหมายไม่ถูกต้อง');
        continue;
    }

    stdout.write('ทายผลของ $num1 $operator $num2: ');
    String? input = stdin.readLineSync();
    double? userAnswer = double.tryParse(input ?? '');

    if (userAnswer != null && (operator == '/' ? (userAnswer - correctAnswer).abs() < 0.01 : userAnswer == correctAnswer)) {
      print('ถูกต้อง!');
    } else {
      print('ผิด! คำตอบที่ถูกต้องคือ $correctAnswer');
    }

    stdout.write('เล่นอีกครั้ง? (y/n): ');
    if ((stdin.readLineSync() ?? '').toLowerCase() != 'y') break;
  }
}