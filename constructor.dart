void main() {
  List<Student> data = [
    Student("ali", "ahmed", 169, 14, 67, "SA"),
    Student("ahmed", "sheikh", 69, 14, 67, "US"),
    Student("zubair", "ahmed", 169, 14, 67, "US"),
    Student("essa", "ali", 169, 14, 67, "Uk"),
    Student("talha", "ahmed", 19, 1, 697, "Ukraine"),
  ];
  data.forEach((element) {
    print(element.name! + element.lastname!);
  });
}

class Student {
  String? name;
  String? lastname;
  int? id;
  int? age;
  int? classNumber;
  String? address;

  Student(
    String name,
    String lastname,
    int id,
    int age,
    int classNumber,
    String address,
  ) {
    print("constructor");
    this.name = name;
    this.lastname = lastname;
    this.id = id;
    this.age = age;
    this.classNumber = classNumber;
    this.address = address;
  }
}
