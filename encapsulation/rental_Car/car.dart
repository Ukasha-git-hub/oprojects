

void main() {
  Car car = Car("Vitz", "2015", "grey", 4, 243, 2);
  car.displayCarInfo();
  print(car.calculateDays(4));
}

class Vehichle {
  String Name;
  String model;
  Vehichle(this.Name, this.model);
  void displayInfo() {
    print("name:${Name},model:${model}");
  }

  double calculateDays(int days) {
    return days * 50;
  }
}

class Car extends Vehichle {
  String Color;
  int wheel;
  int price;
  int door;
  
  Car(
    String Name,
    String model,
    this.Color,
    this.wheel,
    this.price,
    this.door,
    
  ) : super(Name, model);
  void displayCarInfo() {
    super.displayInfo();

   print("color:${Color},wheel:${wheel},price${price},door${door}");
 
  }
     @override
    double calculateDays(int days) {
      return super.calculateDays(days) + door * 40 ;
    }
}
