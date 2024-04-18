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
  print(numbers);
  printer(numbers);

  // DYNAMICCCS vaowwww you dont have to specify list type it will be dynamic automatically
  List<dynamic> dynamiclist = List.filled(7, "sena");
  print (dynamiclist);
  dynamiclist[1] ="Baris'a";
  dynamiclist[2] = 7;         // integer
  dynamiclist[3] ="gundur";
  dynamiclist[4] = 21.5;      // double
  dynamiclist[5] ="kerer";
  dynamiclist[6] = "kustu";
  print(dynamiclist);  
}

printer(List<int> nums){
  for (int i=0;i<nums.length;i++) {
    print("Number ${i+1} is ${nums[i]}");
  } 
}