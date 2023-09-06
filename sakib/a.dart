import 'dart:io';

void main(){
print("type one number");
var a =int.parse(stdin.readLineSync()!);
print("type one number");
var b= int.parse(stdin.readLineSync()!);
var sum =(a+b);
print("sum is $sum");
}