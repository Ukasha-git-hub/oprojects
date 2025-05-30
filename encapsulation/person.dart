class Person {
  String _name;
  int _age;
  String _address;
  String _fathername;
  int _salary;
  //private variables
  String get fatherName => _fathername;
  int get Salary => _salary;
  String get name => _name;
  int get aged => _age;
  String get accomodation => _address;
  set setName(String name) {
    _name = name;
  }

  set setSalary(int salary) {
    if (salary > 1000) {
      _salary = Salary;
    }
  }
set SetFatherName(String fathername){
  _fathername =fathername;
}
  set setAge(int age) {
    if (age < 30) {
      _age = age;
    }
  }

  Person(this._name, this._age, this._address, this._fathername, this._salary);
  void displayPersonInfo() {
    print(
      "Person: $name, age: $aged, address: $accomodation, father: $fatherName, salary: $Salary",
    );
  }
}
