/*
  The => expr syntax is a shorthand for { return expr; }. The => notation is sometimes referred to as arrow syntax.
*/
import 'dart:io';
void main(List<String> args) {
  
    stdout.write("Welcome on board!: \n");
    stdout.write("What you wanna do?\n");
    stdout.write("Subtraction (a-b): 1\n");
    stdout.write("Additon (a+b): 2 \n");
    stdout.write("Multiplication (a*b): 3 \n");
    stdout.write("Division (a/b): 4 \n");

    int? choose = int.parse(stdin.readLineSync()!);
    stdout.write("Please specify length a and b for operation \n");
    stdout.write("a: ");
    int? a = int.parse(stdin.readLineSync()!);
    stdout.write("\nb: ");
    int? b = int.parse(stdin.readLineSync()!);

    switch (choose) {
      case 1:
        print("result is: ${Subtraction(a, b)}");
      break;

      case 2:
        print("result is: ${Additon(a, b)}");
      break;

      case 3:
        print("result is: ${Multiplication(a, b)}");
      break;

      case 4:
        print("result is: ${Division(a, b)}");
      break;

    }
  
}

int Subtraction(int a,int b) => a-b;
int Additon(int a,int b) => a+b;
int Multiplication(int a,int b) => a*b;
double Division(int a,int b) => a/b;


