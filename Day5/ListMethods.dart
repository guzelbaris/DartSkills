void main(List<String> args) {
  Person Baris = Person(7, "Baris");
  Student Burak = Student(6, "Burak",12);
  Person Enes = Student(13, "Enes",8);
  var Ugur = Person(3, "Ugur");
  var Omer = Student(2, "Baris",9);

  List<Person> allPersons = [Baris,Burak,Enes,Ugur,Omer];
  

}

class Person {
  int id=0;
  String name="";

  Person(this.id, this.name);

  @override

  String toString(){
    return "id: ${this.id} and name: ${this.name}";
  }
}

class Student extends Person {
  int NoOfCourses=0;
  Student(id,name,NoOfCourses) : super(id,name);
  @override
  String toString(){
    return "id: ${this.id}, name: ${this.name} and Number of taking courses:${this.NoOfCourses}";
  }
}