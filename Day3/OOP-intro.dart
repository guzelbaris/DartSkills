void main(List<String> args) {
  
  Student Baris = Student();
  Baris.name="Baris";
  Baris.id=2304764;
  Baris.isGraduated=true;
  print(Baris.name);
  Baris.Study();
}

class Student{
  int? id;
  String? name;
  bool? isGraduated;

  void Study(){
    print("Study hard babe");
  }

}