import 'person.dart';

void main() {
  Person person = Person("ALI", 38, "gulashan", "zaid", 1000);

  person.displayPersonInfo();
  print(person.fatherName);
  print("person address:${person.accomodation}");
  person.setAge = 20;
  person.setName = "ukasha";
  person.setSalary = 3000;
  person.SetFatherName = "zaid";
  print("object name:${person.name}");
  print("object age:${person.aged}");
}
