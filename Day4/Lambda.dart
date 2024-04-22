import 'dart:math' as mate;
void main() {
  // Create a list of integers
  List<int> numbers = [1, 2, 3, 4, 5];

  // Define an anonymous function using a lambda expression
  void printSquare(int number) {
    print('Square of $number: ${number * number}');
  }

  // Use the custom 'forEach' function with a lambda expression as the action
  forEachB(numbers, (int number) {
    print('Double of $number: ${number * 2}');
  });

  // Use the custom 'forEach' function with the 'printSquare' function
  forEachB(numbers, printSquare);
  print("*************************************");
  forhepsi(numbers, callbacker);
}

// Define a higher-order function 'forEach' that takes a list and a function as arguments
void forEachB<T>(List<T> items, void Function(T) action) {
  for (var item in items) {
    action(item); // Apply the given function 'action' to each item in the list
  }
}

void forhepsi (List<int> nums,callbacker){
  for(int i=0;i<nums.length;i++){
    callbacker(nums[i]);
  }
}

void callbacker (int num){
  print("Square of given number $num is ${mate.sqrt(num)}");
}