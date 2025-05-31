void main() {
  Macbook mac = Macbook("mac", "m2", 56);
  mac.displayInfo();
  mac.ssd = 156;
  mac.displayMAcInfo();
}

class Laptop {
  String name;
  String generation;

  Laptop(this.name, this.generation);
  void displayInfo() {
    print("Laptop Name: $name, Generation: $generation");
  }
}

class Macbook extends Laptop {
  int ssd;
  Macbook(String name, String generation, this.ssd) : super("macbook", "M3");
  void displayMAcInfo() {
    super.displayInfo();
    if (ssd > this.ssd) {
      print("ssd:$ssd");
    } else {
      print("ssd is not supported");
    }
  }
}
