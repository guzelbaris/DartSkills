
void main() {
  // Create an instance of the immutable Point class
  final point = Point(3.0, 5.0);

  // Try to modify the properties (this will result in a compile-time error)
  // point.x = 4.0; // Error: The final variable 'x' can only be set once.

  point.printo();
  // Describe the point using the describe method
  point.describe();

  final point2 = const Point(3.0, 5.0);

  // Describe the point using the describe method
  point2.printo();
  point2.describe(); // hashcode is different
  

  final point3 = const Point(4.2,2.7);
  point3.printo();
  point3.describe(); // hashcode is different

  final point4 = const Point(3.0, 5.0);
  point4.printo();
  point4.describe(); // hashcode is different
}

// Define an immutable class representing a Point
class Point {
  final double x; // Declare a final property for x-coordinate
  final double y; // Declare a final property for y-coordinate

  // Constructor with named parameters to initialize x and y
  const Point(this.x, this.y);

  // Getter methods to access x and y coordinates
  double get getX => x;
  double get getY => y;

  // Method to describe the point
  void describe() {
    print('Point: ($x, $y)');
    print("hashcode is ${this.hashCode}");
  }

  void printo(){
  // Access and display the properties of the point
  print('X-coordinate: ${this.x}');
  print('Y-coordinate: ${this.y}');
  }
}