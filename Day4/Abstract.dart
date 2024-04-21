/*
  To define a class that doesn't require a full, concrete implementation of its entire interface, use the abstract  modifier.

  Abstract classes cannot be constructed from any library, whether its own or an outside library. Abstract classes  often have abstract methods.
 */


void main(List<String> args) {
  //Shapes shape = Shapes(); // abstract classes are cannot be instantiated directly.
  Shapes sq = Square(5);
  Shapes rt = Rectangle(4,5);
  List<Shapes> shapes = <Shapes>[];

  shapes.add(sq);
  shapes.add(rt);
  printer(shapes);

}

void printer(List<Shapes> shapeno){
  for (Shapes shape in shapeno) {
    print("${shape.runtimeType.toString()}'s perimeter is: ${shape.perimeter().toString()}");
    print("${shape.runtimeType.toString()}'s area is: ${shape.area().toString()}");
    
  }
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
  Rectangle(this.shortside,this.longside);

  @override
  double area() {
    return 2*this.shortside*this.longside.toDouble();
  }
  
  @override
  double perimeter() {
    return 2*(this.shortside+this.longside).toDouble();
  }
  
}

