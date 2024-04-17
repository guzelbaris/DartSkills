void main(List<String> args) {
  
  print("Hello World");
  print("Baris Guzel");

  num age=25;
  String name="Baris";
  double width = 23.23;
  double height = 12.23;

  print("$name is $age years old.");
  print("The number of characters in my name is: ${name.length}");
  print("Area of the rectangular is ${(width*height).toInt()}");
  print("Area of the rectangular is ${(width*height)}");

  int num1 = 23;
  int num2 = 21;
  num smallnumber=num1<num2?num1:num2;
  print("small number is: $smallnumber");
  String? name2 = null;
  String Surname2 = "Guzel";
  String message = name2 ?? Surname2; // when you use some values from web they might be null
  print("message is $message");

}