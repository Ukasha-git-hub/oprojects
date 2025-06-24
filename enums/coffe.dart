void main() {
  Cm cm = Cm("Cheepcoffe", 40, CoffeTypes.Black);
  switch (cm.types) {
    case CoffeTypes.Black:
      print(cm.cP(0));
    case CoffeTypes.Cappuccino:
      print(cm.cP(0));
    case CoffeTypes.Latte:
      print(cm.cP(0));
    case CoffeTypes.Espresso:
      print(cm.cP(0));
  }
}

enum CoffeTypes { Espresso, Cappuccino, Latte, Black }

class Cm {
  String spName;
  int price;
  CoffeTypes types;
  Cm(this.spName, this.price, this.types);
  int cP(int p) {
    if (types == CoffeTypes.Cappuccino) {
      p = 50;
    } else {
      p = price;
    }
    return p;
  }
}
