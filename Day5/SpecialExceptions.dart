void main(List<String> args) {
  try {
    Student Baris = Student(-5);
  print(Baris.age);
  }on AgeException catch (e) {
    print(e);
    print(e.message);
    
  }
  
}

class AgeException implements Exception {

  String message;

  AgeException({this.message="Age Exception"});

  @override
  String toString(){
    return "Exception worked";
  }
  
}

class Student {
  int age=0;

  Student(int age){
    if(age<0){
      throw AgeException(message: 'Age Exception : Age cannot be zero');
    }
    else{
      this.age=age;
    }

  }
}