/*
    In dart Lists combine both arrays and vectors.

    There is two types of list
    1-> Static Length
    2-> Dynamic Length
    parameter growable determines the type of the list

*/
void main(List<String> args) {

  int number = 21;
  List<int> numbers= List.filled(5, number,growable: true);
  //print(numbers);
  //printer(numbers);

  // DYNAMICCCS vaowwww you dont have to specify list type it will be dynamic automatically
  List<dynamic> dynamiclist = List.filled(7, "Mikail");
  //print (dynamiclist);
  dynamiclist[1] ="and";
  dynamiclist[2] = 7;         // integer
  dynamiclist[3] ="brothers";
  dynamiclist[4] = 21.5;      // double
  dynamiclist[5] ="battle";
  dynamiclist[6] = "lie";
  //print(dynamiclist);  

  List<double> Numerikos = List.filled(5, 21.0,growable: true);
  Numerikos[3]=13.5;
  Numerikos[2]=3.5;
  Numerikos[4]=43.5;
  Numerikos[0]=43.2;
  print(Numerikos.first);
  print(Numerikos.indexOf(13.5));
  print(Numerikos.last);
  print(Numerikos.firstOrNull);
  print(Numerikos.firstWhere((element) => element<14));
  Numerikos.shuffle();
  print(Numerikos);
  Numerikos.sort();
  print(Numerikos);


}

printer(List<int> nums){
  for (int i=0;i<nums.length;i++) {
    print("Number ${i+1} is ${nums[i]}");
  } 
}