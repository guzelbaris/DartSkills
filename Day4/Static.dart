import 'dart:math' as math;
void main() {
  // Using static constants and methods of the Math class directly
  print('PI: ${Mathes.pi}'); // Accessing static constant PI directly
  print('E: ${Mathes.e}');   // Accessing static constant E directly

  // Using static methods for mathematical operations
  double radius = 5.0;
  print('Area of a circle with radius $radius: ${Mathes.calculateAreaOfCircle(radius)}');
  print('Square root of 16: ${Mathes.sqr(16)}');

  Mathes m1 = Mathes(fNumber: 47,sNumber: 23);
  m1.add();
  m1.add();
  m1.substract();
  Mathes m2 = Mathes(fNumber: 17,sNumber: 3);
  m2.add();
  m2.add();
  m2.substract();
  print("total operation number: ${Mathes.totalOperationcount}");
}

// Example Math class with static members for mathematical operations
class Mathes {
  // Define non static variables
  double fNumber = 0;
  double sNumber = 0;

  Mathes({required this.fNumber, required this.sNumber});

  // Define static constants
  static const double pi = 3.14159;
  static const double e = 2.71828;
  static int totalOperationcount=0;

  // Define static method to calculate area of a circle
  static double calculateAreaOfCircle(double radius) {
    return pi * radius * radius;
  }

  // Define static method to calculate square root
  static double sqr(double value) {
    return math.sqrt(value); // Using imported 'math' library for square root calculation
  }

  double add(){
    totalOperationcount++;
    return this.fNumber+this.sNumber;

  }
  double substract(){
    totalOperationcount++;
    return this.fNumber-this.sNumber;
  }
}
