import 'person.dart';

void main() {
  Person person = Person("ALI", 38, "gulashan");

  person.displayPersonInfo();

  print("person address:${person.accomodation}");
  person.setAge = 20;
  person.setName = "ukasha";
  print("object name:${person.name}");
  print("object age:${person.aged}");
}
