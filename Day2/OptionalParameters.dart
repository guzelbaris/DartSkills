void main(List<String> args) {
  
  print("Addition 1st way: ${Add(2,3,5)}");
  print("Addition 1st way: ${Add(2,3)}");
  print("Addition 2nd way: ${Add2(a:2)}");
  print("Addition 2nd way: ${Add2(a:2,b:3)}");
  print("Addition 2nd way: ${Add2(a:2,b:3,c:5)}");
}

// if you define a parameter like inside a [] it means its value is optional you dont need to add
int Add(int b, int c,[int a=0]) => a+b+c;

// if you define all parameters {} you have give their names as well since zero has no effect on addition we can give them initial zero
int Add2({int b=0, int c=0,int a=0}) => a+b+c;
