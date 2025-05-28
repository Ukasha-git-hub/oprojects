void main() {
  University university = University("iu", "gs", <Department>[]);
  Department department1 = Department("media Science", "aniqa", <Student>[]);
  Department department2 = Department("computer Science", "ali", <Student>[]);
  university.departments.add(department1);
  Student student1 = Student("ukasha", "adm/558", "@gmail.com");
  Student student2 = Student("ali", "adm/559");
  Student student3 = Student("sarah", "adm/560", "@gmail.com");
  department1.students.add(student1);
  department1.students.add(student2);

  department2.students.add(student3);
  university.departments.add(department2);
  print(
    "University: ${university.uniName}, Location: ${university.loacation},Departments: ${university.departments.length}",
  );
  university.departments.forEach((Department) {
    Department.displayInfo();
  });
}

class University {
  String uniName;
  String loacation;
  List<Department> departments;
  University(this.uniName, this.loacation, this.departments);
}

class Department {
  String departName;
  String head;
  List<Student> students;
  Department(this.departName, this.head, this.students);
  void displayInfo() {
    print("Department: $departName, Head: $head");
    for (var student in students) {
      student.displayInfo();
    }
  }
}

class Student {
  String stdName;
  String id;
  String? email;
  Student(this.stdName, this.id, [this.email]);
  void displayInfo() {
    print("Name: $stdName, ID: $id, Email: ${email ?? 'Not provided'}");
  }
}
