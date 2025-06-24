void main() {
  List<FoodOrder> orders = [
    FoodOrder(FoodCategory.Beverage, BeverageItem.Juice),
  ];
  orders.add(FoodOrder(FoodCategory.Beverage, BeverageItem.Coffee));
  orders.add(FoodOrder(FoodCategory.Dessert, DessertItem.Cake));
  orders.add(FoodOrder(FoodCategory.FastFood, FastFood.Pizza));
  orders.remove(orders.last);
  double total = 0;
  for (var order in orders) {
    order.printOrder();
    total += order.getPrice();
  }
  print("total price: $total");
}

enum FoodCategory { FastFood, Dessert, Beverage }

enum FastFood { Burger, Pizza, Fries }

enum DessertItem { Cake, IceCream, Donut }

enum BeverageItem { Tea, Coffee, Juice }

class FoodOrder {
  FoodCategory fc;
  dynamic item;

  FoodOrder(this.fc, this.item);
  double getPrice() {
    switch (fc) {
      case FoodCategory.FastFood:
        switch (item) {
          case FastFood.Burger:
            return 350;
          case FastFood.Fries:
            return 250;
          case FastFood.Pizza:
            return 200;
        }
        break;
      case FoodCategory.Dessert:
        switch (item) {
          case DessertItem.Cake:
            return 30;
          case DessertItem.Donut:
            return 50;
          case DessertItem.IceCream:
            return 100;
        }
        break;
      case FoodCategory.Beverage:
        switch (item) {
          case BeverageItem.Juice:
            return 35;
          case BeverageItem.Coffee:
            return 30;
          case BeverageItem.Tea:
            return 10;
        }
    }
    return 0.0;
  }

  void printOrder() {
    print("food category:${fc} item :${item} price :${getPrice()}");
  }
}
