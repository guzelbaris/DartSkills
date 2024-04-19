import 'dart:math';

void main(List<String> args) {

  Car firstCar = Car();
  firstCar.model="Focus";
  firstCar.manufacturer="Ford";
  firstCar.manufactureDate= 2015;
  firstCar.isAutomatic=true;
  firstCar.printInfo();

  // Creating a Car using the named constructor with optional parameters
  Car secondCar = Car(
    model: "Civic",
    manufacturer: "Honda",
    manufactureDate: 2020,
    isAutomatic: false,
  );
  secondCar.printInfo();
  Car thirdCar=Car(model:"Fiesta",manufacturer: "Ford",manufactureDate: 2018,isAutomatic: false);
  thirdCar.printInfo();

  Car fourthCar = Car.factory();
  fourthCar.printInfo();
  Car fifthCar = Car.factory();
  fifthCar.printInfo();
  Car SixthCar = Car.factory();
  SixthCar.printInfo();
}

class Car{
  String? model;
  String? manufacturer;
  int? manufactureDate;
  bool? isAutomatic;

  Car({
    this.model,
    this.manufacturer,
    this.manufactureDate,
    this.isAutomatic,
  }) {
    print("You have created a car class object");
  }
  
  factory Car.factory(){
    return Car(model:"Fiesta",manufacturer: "Ford",manufactureDate: Random().nextInt(20)+2000,isAutomatic: Random().nextBool());
  }

  void printInfo(){
    print("The car ${this.model} is manufactured by ${this.manufacturer} in ${this.manufactureDate} also is automatic: ${this.isAutomatic}");
  }
}
