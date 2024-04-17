import 'dart:io';
void main(List<String> args) {
  
  // Getting user input
  stdout.write("Enter your name: "); // Prompting user for input
  String? userInput = stdin.readLineSync(); // Reading user input

  if (userInput != null && userInput.isNotEmpty) {
    print("Hello, $userInput!"); // Greeting the user
  } else {
    print("Hello, Anonymous!"); // Default message if no input provided
  }
  stdout.write("Enter your age: "); // Prompting user for input note that ! added for letting compiler know that input will not be null
  int? age = int.parse(stdin.readLineSync()!);

  print("Your age is $age");
}