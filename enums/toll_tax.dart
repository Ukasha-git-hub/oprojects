void main() {
  // TollTax tollTax = TollTax(VehichleType.TwoWheels, TwoWheels.Bike);
  List<TollTax> tCv =[
  ];
  tCv.add(TollTax(VehichleType.fourWheels, FourWheels.Mira));
  tCv.add(TollTax(VehichleType.TwoWheels, TwoWheels.Bike));
  tCv.add(TollTax(VehichleType.MiniTruck, MiniTruck.Rivo));
    tCv.add(TollTax(VehichleType.fourWheels, FourWheels.Chr));
  tCv.add(TollTax(VehichleType.TwoWheels, TwoWheels.scooty));
  tCv.add(TollTax(VehichleType.MiniTruck, MiniTruck.Vigo));
    tCv.add(TollTax(VehichleType.fourWheels, FourWheels.Vitz));
  tCv.add(TollTax(VehichleType.TwoWheels, TwoWheels.Bike));
  tCv.add(TollTax(VehichleType.MiniTruck, MiniTruck.Hilux));
  tCv.add(TollTax(VehichleType.fourWheels, FourWheels.Mira));
  tCv.add(TollTax(VehichleType.TwoWheels, TwoWheels.Bike));
  tCv.add(TollTax(VehichleType.MiniTruck, MiniTruck.Rivo));
    tCv.add(TollTax(VehichleType.fourWheels, FourWheels.Chr));
  tCv.add(TollTax(VehichleType.TwoWheels, TwoWheels.scooty));
  tCv.add(TollTax(VehichleType.MiniTruck, MiniTruck.Vigo));
    tCv.add(TollTax(VehichleType.fourWheels, FourWheels.Vitz));
  tCv.add(TollTax(VehichleType.TwoWheels, TwoWheels.Bike));
  tCv.add(TollTax(VehichleType.MiniTruck, MiniTruck.Hilux));
  tCv.add(TollTax(VehichleType.fourWheels, FourWheels.Mira));
  tCv.add(TollTax(VehichleType.TwoWheels, TwoWheels.Bike));
  tCv.add(TollTax(VehichleType.MiniTruck, MiniTruck.Rivo));
    tCv.add(TollTax(VehichleType.fourWheels, FourWheels.Chr));
  tCv.add(TollTax(VehichleType.TwoWheels, TwoWheels.scooty));
  tCv.add(TollTax(VehichleType.MiniTruck, MiniTruck.Vigo));
    tCv.add(TollTax(VehichleType.fourWheels, FourWheels.Vitz));
  tCv.add(TollTax(VehichleType.TwoWheels, TwoWheels.Bike));
  tCv.add(TollTax(VehichleType.MiniTruck, MiniTruck.Hilux));
  double totalToll = 0;
  for (var tc in tCv) {
    tc.TollPrie();
    totalToll += tc.getPrice();
  }
  print("total $totalToll");

}

enum VehichleType { TwoWheels, fourWheels, MiniTruck }

enum TwoWheels { Bike, scooty }

enum FourWheels { Mira, Vitz, Chr }

enum MiniTruck { Vigo, Rivo, Hilux }

class TollTax {
  VehichleType Vt;
  dynamic car_name;
  TollTax(this.Vt, this.car_name);
  void TollPrie() {
    print("VehichleType:$Vt,Vehichle name $car_name,toll text ${getPrice()}");
  }

  double getPrice() {
    switch (Vt) {
      case VehichleType.TwoWheels:
        switch (car_name) {
          case TwoWheels.Bike:
            return 40;
          case TwoWheels.scooty:
            return 30;
        }
        break;
      case VehichleType.fourWheels:
        switch (car_name) {
          case FourWheels.Mira:
            return 100;
          case FourWheels.Vitz:
            return 130;
          case FourWheels.Chr:
            return 150;
        }
        break;
      case VehichleType.MiniTruck:
        switch (car_name) {
          case MiniTruck.Vigo:
            return 240;
          case MiniTruck.Rivo:
            return 200;
          case MiniTruck.Hilux:
            return 400;
        }
        break;
    }
    return 0.0;
  }
}
