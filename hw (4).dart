import 'dart:io';

void main() {
  while (true) {
    print("เครื่องคิดเลข");
    print("1. บวก");
    print("2. ลบ");
    print("3. คูณ");
    print("4. หาร");
    print("X. ไปต่อ");
    print("Y. ออก");

    stdout.write("Enter your choice: ");
    String choice = stdin.readLineSync()!.toUpperCase();

    if (choice == "X") {
      continue;
    } else if (choice == "Y") {
      break;
    } else if (choice == "1" || choice == "2" || choice == "3" || choice == "4") {
      stdout.write("Enter first number: ");
      double num1 = double.parse(stdin.readLineSync()!);

      stdout.write("Enter second number: ");
      double num2 = double.parse(stdin.readLineSync()!);

      double result = 0;

      switch (choice) {
        case "1":
          result = num1 + num2;
          break;
        case "2":
          result = num1 - num2;
          break;
        case "3":
          result = num1 * num2;
          break;
        case "4":
          if (num2 != 0) {
            result = num1 / num2;
          } else {
            print("Error");
            continue;
          }
          break;
      }

      print("Result: $result");
    } else {
      print("Invalid choice. Please try again.");
    }
  }
}
