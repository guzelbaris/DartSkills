import 'MyStack.dart';

void main(List<String> args) {
  MyStack<int> integerStack = MyStack<int>();
  integerStack.push(23);
  integerStack.push(3);
  integerStack.push(13);
  integerStack.printAll();
  integerStack.printOrder();


  print(integerStack.pop());
  print(integerStack.pop());
  print(integerStack.pop());

}