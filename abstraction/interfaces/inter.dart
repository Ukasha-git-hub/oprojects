void main() {
  Lion lion = Lion();
  Griaffe girrafe = Griaffe();
  Zebra zebra = Zebra();
  zebra.jungleEntity();
  lion.jungleEntity();
  girrafe.jungleEntity();
}

class Animal {
  void jungleEntity() {
    print("The unique animal of juble");
  }
}

class Lion implements Animal {
  @override
  void jungleEntity() {
    print("Lion is king of junglr");
  }
}

class Griaffe implements Animal {
  @override
  void jungleEntity() {
    print("Girrafe is the tallest animal of jungle");
  }
}

class Zebra implements Animal {
  @override
  void jungleEntity() {
    print("zebra is cutest one with uniques pattren");
  }
}
