void main() {
  Student student = Student();
  Student student1 = Student();
  Student student2 = Student();
  Student student3 = Student();
  student.name = "jhone";
  student.fatherName = "doe";
  student.age = "20";
  student.rollNo = 1234;
  student1.name = "uk";
  student1.fatherName = "khu";
  student1.age = "2";
  student1.rollNo = 125;
  student2.name = "ali";
  student2.fatherName = "khan";
  student2.age = "22";
  student2.rollNo = 123;
  student3.name = "ahmed";
  student3.fatherName = "khan";
  student3.age = "23";
  student3.rollNo = 124;

  student.display();
  student1.display();
  student2.display();
  student3.display();
  student.updateName("ukasha");
  student1.updateFatherName("Khursheed");
  student2.updateAge("25");
  student3.updateRollNo(1235);
}

class Student {
  String? name;
  String? fatherName;
  String? age;
  int? rollNo;

  void display() {
    print(("student name is $name"));
    print(("student father name is $fatherName"));
    print(("student age is $age"));
    print(("student roll no is $rollNo"));
  }

  void updateName(String newName) {
    name = newName;
    print("the name has been updated to $name");
  }

  void updateFatherName(String NewFatherName) {
    fatherName = NewFatherName;
    print("the student fathers name is $fatherName");
  }

  void updateAge(String newAge) {
    age = newAge;
    print("the age has been updated to $age");
  }

  void updateRollNo(int NewRollNo) {
    rollNo = NewRollNo;
    print("the roll no has been updates to $rollNo");
  }
}
