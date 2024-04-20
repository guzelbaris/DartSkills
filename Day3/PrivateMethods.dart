import 'dart:math';

import 'CircleHeader.dart';
import 'PrivateClassExampleHeader.dart';

void main(List<String> args) {
  

  // for(int i=0;i<10;i++){
  //   DataBaseTasks? db = DataBaseTasks();
  //   db.connect();
  //   db.printer();
  //   db=null;
  // }
  

  for(int i=0;i<10;i++){
    Circle? circ = Circle(Random().nextDouble()*5);
    print("Circle diameter is: ${circ.getdiameter}");
    print("Perimeter: ${circ.Perimeter()} , Area: ${circ.Area()}");
    circ.diameter= Random().nextDouble()*10;
    print("Modifice circle diameter is: ${circ.getdiameter}");
    print("Modified Perimeter: ${circ.Perimeter()} , Modified Area: ${circ.Area()}");
    print("*********************************************************************************");
    circ=null;
  }

}