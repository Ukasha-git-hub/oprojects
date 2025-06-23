void main() {
  Person person = Person("ukasha", "uk@gmail.com");
  person.info();
}

class Person with Logger {
  String name, password;
  Person(this.name, this.password);
  void info() {
    logg("user name:${name} password is ${password}");
  }
}

mixin Logger {
  logg(String message) {
    print(message);
  }
}
mixin Validation {
  String? checkPass(String Password) {
     return null;
  }
}
