void main() {
  Continent continent = Continent();
  continent.dispalyInfo();
  continent.name = "3rd plannet";
  print(continent.name);
  continent.contName = "asia";
  continent.countries = 23;
  continent.displayContInfo();
  
}

class World {
  String? name;
  int? continent;

  void dispalyInfo() {
    print("${name = "Earth"},${continent = 7}");
  }
}

class Continent extends World {
  String? contName;
  int? countries;
  void displayContInfo() {
    print("cont name : $contName,countries : $countries");
  }
}
