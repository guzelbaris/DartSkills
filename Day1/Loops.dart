
void main(List<String> args) {
  List namelist =["Baris","Burak","Harun"];

  for(String name in namelist){
    print("$name");
  }

  for(int i=0; i<15;i++){
    if(i>=5 && i<=8){
      print("Number $i is equal or greater than 5");
    }
    else if (i>8){
      print("the loop finish in here");
      break;
    }
    else{
      print("Number $i is equal or samller than 5");
      continue;
      print("The code will not reach here");
    }
    print("number is $i");
  }

  OuterLoop:for(int i=0;i<5;i++){
    
    InnerLoop:for(int j=0;j<5;j++){
      if(i==2){
        continue OuterLoop;
      }
      if(i==3 && j>3){
        break InnerLoop;
      }  
      print("$i * $j = ${i*j}");
    }
  }
  

}