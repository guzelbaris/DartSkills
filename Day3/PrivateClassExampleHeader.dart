import 'dart:math';

class DataBaseTasks {
  String _username = "Baris";
  int? _password; // underscore _ make methods and variables private

  DataBaseTasks(){
    this._password=Random().nextInt(3)+1;
  }

  DataBaseTasks.Credentials(int no){
    this._password=no;
  }

  void connect(){
    if(_hasNetworkConnection()){
      if(_username =="Baris" && _password==3){
        print("Successfully connected");
      }
      else{
        print("Connection failed: wrong credentials");
      }
    }
    else{
      print("Connection failed: no internet access");
    }

  }

  bool _hasNetworkConnection() => Random().nextBool();

  void printer(){
    print("name ${this._username}");
    print("password ${this._password}");
  }
  
}