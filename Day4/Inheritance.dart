import 'dart:math';

void main(List<String> args) {
  NormalUser? user1=NormalUser("2304764");
  user1.login();
  user1.invite("Baris", "Guzel");
  user1=null;
  AdminUser user2=AdminUser(2);
  user2.login();
  user2.show();
  

  
}

class User {
  String email="";
  String password="";

  void login(){
    print("User logged in");
  }
}

class NormalUser extends User {
  String id="";
  NormalUser(String this.id);
  void invite(String name, String surname){
    Participant? participante=Participant(name,surname);
    print("User with the id ${this.id} invited ${participante.name} ${participante.surname}");
    participante=null;
  }
  
}

class Participant extends User {
  String name="";
  String surname="";
  Participant(String this.name, String this.surname)
  {
    Attend();
  }
  void Attend(){
    if(Random().nextBool()){
      print("Participant ${this.name} ${this.surname} accepted invite.");
    }
    else{
      print("Participant ${this.name} ${this.surname} rejected invite.");
    }
    
  }
  
}

class AdminUser extends User {
  int level=0;
  AdminUser(int this.level){}
  void show(){
    print("${this.level}. Level manager looked how many people attended");
  }
  
}