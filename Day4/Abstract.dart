/*
  To define a class that doesn't require a full, concrete implementation of its entire interface, use the abstract  modifier.

  Abstract classes cannot be constructed from any library, whether its own or an outside library. Abstract classes  often have abstract methods.
 */
import 'dart:ffi';

void main(List<String> args) {
  
}

// Abstract class created need one abstract method
abstract class Shapes {
  Double area();
}

