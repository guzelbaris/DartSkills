void main(List<String> args) {
  Map <String, int> CountryPhoneCode = {};
  CountryPhoneCode["England"]=44;
  CountryPhoneCode["Turkey"]=90;
  CountryPhoneCode["France"]=33;
  print(CountryPhoneCode);

  //Cannot reassign value and it works during run time so you can add new items 
  final Map <String, dynamic> Baris = {
    "Name" : "Baris",
    "Surname" : "Guzel",
    "Age" : 25.6,
    "Birthday" : 07.02

  };

  Baris["Mother"] = "Zemzema";

  
  Baris["Name"]="andul"; // has no effect
  print(Baris);
  print("****************************************");
  const Map <String, dynamic> Baris2 = {
    "Name" : "Baris",
    "Surname" : "Guzel",
    "Age" : 25.6,
    "Birthday" : 07.02

  };

  //Baris2["Mother"] = "Zemzema"; // Cannot modify unmodifiable map but you can add in final

  print(Baris2);
  // Baris2["Name"]="andul"; // Cannot modify unmodifiable map

}