void main() {
  Bike bike = Bike("Honda", 2018, 620, true);
  bike.bikeInfo();
  print(bike.bikePrice(400));
}

class Vehichle {
  String company;
  int model;

  Vehichle(this.company, this.model);
  void displayInfo() {
    print("$company,$model");
  }

  double bikePrice(int basePrice) {
    return basePrice.toDouble();
  }
}

class Bike extends Vehichle {
  int cc;
  bool isSpots;
  Bike(String company, int model, this.cc, this.isSpots)
    : super(company, model);
  void bikeInfo() {
    displayInfo();
    print("CC:${cc},issports:${isSpots}");
  }

  @override
  double bikePrice(int basePrice) {
    double finalPrice = basePrice.toDouble();
    if (model > 2015) {
      int yearAfter2015 = model - 2015;
      finalPrice += yearAfter2015 * 100;
    }
    return finalPrice + 30 * cc;
  }
}
