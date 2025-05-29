class Person {
  String _name;
  int _age;
  String _address;
  String get name => _name;
  int get aged => _age;
  String get accomodation => _address;
  set setName(String name) {
    _name = name;
  }

  set setAge(int age) {
    if (age < 30) {
      _age = age;
    }
  }

  Person(this._name, this._age, this._address);
  void displayPersonInfo() {
    print("Person: $name, age: $aged, address: $accomodation");
  }
}
