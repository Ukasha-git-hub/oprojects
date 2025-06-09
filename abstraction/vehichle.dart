void main() {
  Map<String, String> data = {"horn": "beep", "accelerator": "booooooom"};
  Car car = Car();
  Bike bike = Bike();
  Train train = Train();
  car.engineStart(data);
  bike.enginStop();
  train.engineStart(data);
  train.enginStop();
}

abstract class Vehichle {
  void engineStart(var data);
  void enginStop();
}

class Car extends Vehichle {
  @override
  void engineStart(var data) {
    print("engin Start");
    print(data["horn"]);
  }

  @override
  void enginStop() {
    print("car engin off");
  }
}

class Bike extends Vehichle {
  @override
  void engineStart(var data) {
    print("bike has strated");
  }

  @override
  void enginStop() {
    print("bike engin has stopped");
  }
}

class Train extends Vehichle {
  @override
  void engineStart(var data) {
    print("Train engin has started");
    print(data["accelerator"]);
  }

  @override
  void enginStop() {
    print("tain engin has stopped");
  }
}
