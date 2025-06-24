import '../encapsulation/rental_Car/car.dart';

void main() {
  Person person = Person("uk", 2, Gender.Male, AdminPannel.user);

  print(person.name);
  switch (person.gender) {
    case Gender.Male:
      print("male");
    case Gender.Female:
      print("female");
    case Gender.Other:
      print("not defined");
  }
  switch (person.adminPannel) {
    case AdminPannel.Admin:
      print("this is admin pannel");
    case AdminPannel.user:
      print("this is pannel is for users");
  }
}

enum Gender { Male, Female, Other }

enum AdminPannel { user, Admin }

class Person {
  String name;
  int age;
  Gender gender;
  AdminPannel adminPannel;
  Person(this.name, this.age, this.gender, this.adminPannel);
}
