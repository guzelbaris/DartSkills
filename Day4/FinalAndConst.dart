// Example demonstrating const and final keywords

void main() {
  // Using const for compile-time constants
  const int x = 10;
  const double PI = 3.14;
  const String appName = 'MyApp';

  print('Using const:');
  print('x: $x');
  print('PI: $PI');
  print('appName: $appName');

  // Using final for runtime constants
  final int maxCount = 100;
  final String appNameFinal = getAppName();

  print('\nUsing final:');
  print('maxCount: $maxCount');
  print('appNameFinal: $appNameFinal');

  // Class with final instance variables
  Circle circle = Circle(5.0);
  print('\nCircle radius: ${circle.radius}');
  print('Circle area: ${circle.calculateArea()}');
}

// Class representing a Circle with final instance variables
class Circle {
  final double radius;

  Circle(this.radius);

  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

// Function returning an app name
String getAppName() {
  return 'MyApp';
}
