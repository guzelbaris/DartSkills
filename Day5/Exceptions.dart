import 'dart:math';

void main(List<String> args) {
  try {
    // int num= 16~/0;
    int num2= 16~/int.parse("baris");
    print(num);
    
  } on IntegerDivisionByZeroException{
    print("Divider can not be zero");
  } on FormatException catch (e) {
    print("Wrong formating error occured : ${e.message}");
    print("Error source : ${e.source}");
  }
  catch (e) {
    print("Error : ${e}");
  }
}

double takeSquareRoot(int a){

  if(a<0){
    throw FormatException("Number cannot be negative");
  }
  else{
    return sqrt(a);
  }
  
}
