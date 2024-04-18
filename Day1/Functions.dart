/*
  In dart you dont have to define type annotations it means you dont need to define function types and return types. For example all three works just fine

  bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
  }

  isNoble(atomicNumber) {
  return _nobleGases[atomicNumber] != null;
  }

  bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;

  The => expr syntax is a shorthand for { return expr; }. The => notation is sometimes referred to as arrow syntax.
*/
import 'dart:io';
void main(List<String> args) {
  
  stdout.write("Welcome on board!: \n");
  stdout.write("What you wanna calculate?\n");
  stdout.write("Perimeter : 1\n");
  stdout.write("Area: 2 \n");

  int? choose = int.parse(stdin.readLineSync()!);
  stdout.write("Please specify length a and b of a rectangular \n");
  stdout.write("a: ");
  int? a = int.parse(stdin.readLineSync()!);
  stdout.write("\nb: ");
  int? b = int.parse(stdin.readLineSync()!);
  if(choose==1){
    
    print("Perimeter is: ${RectangularPerimeter(a, b)}");
  }
  else{
    print("Area is: ${RectangularArea(a, b)}");
  }
}
RectangularPerimeter(int a, int b){

  return 2*(a+b);
}
int RectangularArea(int a, int b){

  return a*b;

}

