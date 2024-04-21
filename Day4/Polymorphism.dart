import 'dart:math';
void main(List<String> args) {
  // we can declare each class by using their own instance
  User user1=User();
  NormalUser user2=NormalUser();
  Participant user3=Participant();
  AdminUser user4=AdminUser();

  // also we can declare them by using upcasting in whichever step we want
  User user5=NormalUser();
  User user6=Participant();
  User user7=AdminUser();
  NormalUser user8=AdminUser();

  List<User> users = <User>[];

  users.add(user1);
  users.add(user2);
  users.add(user3);
  users.add(user4);
  users.add(user5);
  users.add(user6);
  users.add(user7);
  users.add(user8);

  for (User userInstance in users) {
    test(userInstance);
  }



}

void test(User user){
  user.login(); // this is called polymorphism we are using one function but it acts according type
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
  void invite(String name, String surname){
    print("Participant ${name} ${surname} invited");
  }
  @override
  void login(){
    print("NormalUser logged in");
  }
  
}

class Participant extends User {
  String name="";
  String surname="";
  @override
  void login(){
    print("Participant logged in");
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

class AdminUser extends NormalUser {
  int level=0;
  @override
  void login(){
    super.login();
    print("AdminUser logged in");
  }
  void show(){
    print("${this.level}. Level manager looked how many people attended");
  }
  @override
  void invite(String name, String surname){
    Participant? participante=Participant();
    print("Admin User with the id ${this.id} invited ${participante.name} ${participante.surname}");
    participante=null;
  }
  
}