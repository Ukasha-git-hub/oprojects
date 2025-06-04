void main() {
  Apartment apart = Apartment("gulshan", "Karachi", 16, 7, 332, 6, 3,false);
  apart.AprtInfo();
  print(apart.apartPrice(700));
}

class Area {
  String name;
  String city;
  int blocks;
  int apartment;
  Area(this.name, this.blocks, this.city, this.apartment);
  void AreaInfo() {
    print("name:${name}City:${city} Blocks${blocks} Apratment${apartment}");
    double apartPrice(int basePrice) {
      return basePrice.toDouble();
    }
  }
}

class Apartment extends Area {
  int floor;
  int room;
  bool isLuxury;
  int currentPrice;
  Apartment(
    String name,
    String city,
    int blocks,
    int apartment,
    this.currentPrice,
    this.floor,
    this.room,

    this.isLuxury,
  ) : super(name, blocks, city, apartment);
  void AprtInfo() {
    AreaInfo();
    print("$floor $room $isLuxury current price :${currentPrice}");
  }

  double apartPrice(int basePrice) {
    double finalPrice = basePrice.toDouble();
    if (room > 5 && isLuxury == true) {
      finalPrice = room * 200;
    } else {
      finalPrice = room * 100;
    }
    return finalPrice.toDouble();
  }
}
