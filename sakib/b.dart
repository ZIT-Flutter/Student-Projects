import 'dart:io';

void main() {
  print('Input All Numbers');

  String allNumberString = stdin.readLineSync()!;

  List<String> numberStringList = allNumberString.split(' ');

  int sum = 0;

  for (var numberString in numberStringList) {
    sum = sum + int.parse(numberString);
  }

  print('Sum is: $sum');
}
