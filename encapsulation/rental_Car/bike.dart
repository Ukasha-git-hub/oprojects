// void main() {
//   Bike bike = Bike("Honda", 2018, 620, true);
//   bike.bikeInfo();
//   print(bike.bikePrice(400));
// }

// class Vehichle {
//   String company;
//   int model;

//   Vehichle(this.company, this.model);
//   void displayInfo() {
//     print("$company,$model");
//   }

//   double bikePrice(int basePrice) {
//     return basePrice.toDouble();
//   }
// }

// class Bike extends Vehichle {
//   int cc;
//   bool isSpots;
//   Bike(String company, int model, this.cc, this.isSpots)
//     : super(company, model);
//   void bikeInfo() {
//     displayInfo();
//     print("CC:${cc},issports:${isSpots}");
//   }

//   @override

//   double bikePrice(int basePrice) {
//     double finalPrice = basePrice.toDouble();
//     if (model > 2015) {
//       int yearAfter2015 = model - 2015;
//       finalPrice += yearAfter2015 * 100;
//     }
//     return finalPrice + 30 * cc;
//   }
// }

//@copyRight;
void main() {
  Bike bike = Bike("honda", "BLack", 2020, 2, true);
  bike.bikeInfo();
  print("bike price : ${bike.bikeprice(4)}");
}

class Vehichle {
  String brand;
  String color;
  int year;
  Vehichle(this.brand, this.color, this.year);
  void displayInfo() {
    print("Brand name:${brand} Color:${color} year:${year}");
  }

  double bikeprice(int days) {
    return (days * 30);
  }
}

class Bike extends Vehichle {
  int wheel;
  bool hasCareare;
  Bike(String brand, String color, int year, this.wheel, this.hasCareare)
    : super(brand, color, year);
    
  void bikeInfo() {
    displayInfo();
    print("Wheel:${wheel} Careare:${hasCareare? 'yes': 'no'}");
  }

  double bikeprice(int days) {
    return super.bikeprice(days) + (hasCareare ? 50: 20.0);
  }
}
