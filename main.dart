void main() {
  Operation operation = Operation();
  Operation operation1 = Operation();
  operation.name = "John";
  operation.fatherName = "Doe";
  operation.age = 30;
  operation.isMarried = true;
  operation.display();
  operation1.name = "ukasha";
  operation1.fatherName = "Khursheed";
  operation1.age = 25;
  operation1.isMarried = false;
  operation1.display();
}
// int a = 5;
// List name = ['a', 'b', 'c'];
// String? b;
// int? c;
// if (c != null) {
//   print("object is not null");
// } else {
//   c = 10;
//   print(c);
// }
// if (a == null) {
//   a = 10;
// } else {
//   print("object is not null");
// }
// if (name == null) {
//   name = ['a', 'b', 'c'];
// } else {
//   print("object is not null");
// }
// if (b == null) {
//   b = null;
// } else {
//   b = 'world';
// }
// print(a);
// print(name);
// print(b);

//}

class Operation {
  String? name;
  String? fatherName;
  int? age;
  bool? isMarried;
  void display() {
    print("may name is $name");
    print("my father name is $fatherName");
    print("my age is $age");
    print("my isMarried is $isMarried");
  }
}
