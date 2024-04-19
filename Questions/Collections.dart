import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  print("******************* First Question *************************");
  // 1.Question: Create a list which will hold 4 city names and print them on the screen
  firstquestion();

  // 2.Question: Create a map in which keys will be string and values will be dynamic variables and this map should show number of processors, ram amount, and if there is ssd installed or not 

  print("******************* Second Question *************************");

  secondquestion();

  // 3.Question: Create a list in which keys will be string represented by some Turkish city names and values will be maps which show their plate number and number of town connected.

  print("******************* Third Question *************************");

  thirdquestion();

  // 4.Question: Create two list which will hold randomly selected ten numbers then add both of these list to another and then take square of each number and put them in a set

  print("******************* Fourth Question *************************");

  fourthquestion();

  // 5.Question: Create a list to hold exam grades of a student then when user pressed -1 exit the loop

  print("******************* Fifth Question *************************");

  fifthquestion();
}

void firstquestion(){
  List<String> CityNames=List.filled(4,"Null",growable: true);
  CityNames[0]="London";
  CityNames[1]="Sheffield";
  CityNames[2]="Liverpool";
  CityNames[3]="Manchester";
  print(CityNames);
  CityNames.add("Leeds");
  print("Added one extra city $CityNames");
}

void secondquestion(){
  Map<String, dynamic> MyComputer = {
    "Model Name: " : "Lenovo Thinkpad P14s",
    "Number of Cores" : 4,
    "RAM" : 8096,
    "SSD Existince" : true
  };

  print(MyComputer);
}

void thirdquestion(){

  List<Map<String,dynamic>> cities=<Map<String,dynamic>>[];
  Map<String,dynamic> Firstcity=Map<String,dynamic>();
  Firstcity["Name"]="Diyarbakir";
  Firstcity["Plate Number"]=21;
  Firstcity["Local Phone Code"]=412;
  Firstcity["Number of Towns"]=12;
  Firstcity["Best Spot"]="Surici";
  Map<String,dynamic> Secondcity=<String,dynamic>{};
  Secondcity["Name"]="Istanbul";
  Secondcity["Plate Number"]=34;
  Secondcity["Local Phone Code"]=212;
  Secondcity["Number of Towns"]=17;
  Secondcity["Best Spot"]="Pera Street";
  final Map<String, dynamic> ThirdCity = {
    "Name" : "Ankara",
    "Plate Number: " : 06,
    "Local Phone Code" : 312,
    "Number of Towns" : 10,
    "Best Spot" : "Tunali Hilmi Street"
  };

  cities.add(Firstcity);
  cities.add(Secondcity);
  cities.add(ThirdCity);
  for (Map<String,dynamic> city in cities) {
    for (MapEntry<String,dynamic> entry in city.entries) {
      print("${entry.key}: ${entry.value}");
    }
    print("************************************");
  }
}

void fourthquestion(){
  List<int> firstarray = List<int>.generate(10, (int index) => Random().nextInt(20), growable: true);
  print(firstarray);
  List<int> secondarray = List<int>.generate(10, (int index) => Random().nextInt(20), growable: true);
  print(secondarray);
  List<int> Merged =List.empty(growable: true);
  Merged.addAll(firstarray); // or we could say Merged = [...firstarray,...secondarray]
  Merged.addAll(secondarray);
  print(Merged);
  //List<int> MergedMerged = [...firstarray,...secondarray];
  //print(MergedMerged);
  Set squarednumbers=Set();
  for (int num in Merged) {
    squarednumbers.add(num*num);
  }
  print(squarednumbers);
}

void fifthquestion(){
  List<int> notes =<int>[];
  int grade=0;
  int average=0;
  do {
    print("Please enter your grade: ");
    grade=int.parse(stdin.readLineSync()!);
    notes.add(grade);
  } while (grade!=-1);

  
  print("Average is: ${calculateaverage(notes)}");

}

double calculateaverage(List<int> notes){
  double average = 1;
  for (int num in notes) {
    average+=num;
  }
  return average/(notes.length-1);
}