/*
  To define a class that doesn't require a full, concrete implementation of its entire interface, use the abstract  modifier.

  Abstract classes cannot be constructed from any library, whether its own or an outside library. Abstract classes  often have abstract methods.
 */


void main(List<String> args) {
  
}

// Abstract class created need one abstract method
abstract class Shapes {
  double area(); // no return type defined
  double perimeter();
}

class Square extends Shapes {
  int vertice=0;
  Square(this.vertice);
  @override
  double area() {
    return 2*this.vertice*this.vertice.toDouble();
  }

  @override
  double perimeter() {
    return 4*this.vertice.toDouble();
  }
  
}

class Rectangle extends Shapes {
  int shortside=0;
  int longside=0;
  
  @override
  double area() {
    return 2*this.shortside*this.longside.toDouble();
  }
  
  @override
  double perimeter() {
    return 2*(this.shortside+this.longside).toDouble();
  }
  
}

