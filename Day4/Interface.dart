void main(List<String> args) {
  Dog dog = Dog(name: 'Buddy'); // Creating an instance of Dog named 'Buddy'
  dog.makeSound();
  dog.walk();
  dog.bark();                   // Accessing a method from the Dog class

  Bird bird = Bird(name: 'Sparrow'); // Creating an instance of Bird named 'Sparrow'
  bird.makeSound();
  bird.walk();                       // Accessing a method from the Bird class
}

// Interface for animals that have legs
abstract class Legged {
  void walk();
}

// Interface for animals that can make sounds
abstract class Audible {
  void makeSound();
}

// Abstract class representing an animal
class Animal {
  String name;

  Animal({required this.name}) {
    print('Animal $name created');
  }
}

// Concrete class representing a bird
class Bird extends Animal implements Legged, Audible {
  Bird({required String name}) : super(name: name);

  @override
  void walk() {
    print('Bird $name is walking');
  }

  @override
  void makeSound() {
    print('Bird $name is chirping');
  }
}

// Concrete class representing a dog
class Dog extends Animal implements Legged, Audible {
  Dog({required String name}) : super(name: name);

  @override
  void walk() {
    print('Dog $name is walking');
  }

  @override
  void makeSound() {
    print('Dog $name is barking');
  }

  void bark() {
    print('$name says: Woof woof!');
  }
}
