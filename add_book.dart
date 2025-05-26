void main() {
  Book book1 = Book("atomic", "steve");
  Book book2 = Book("7habits", "john", "2023");
  Book book3 = Book("flutter", "google", "2022");
  Book book4 = Book("dart", "google", "2021");
  Member member1 = Member("ukasha", "M001", null);
  Records record1 = Records(
    book1.title,
    member1.name,
    "2023-10-01",
    "2023-10-15",
  );
  book1.displayInfo();
  member1.memberInfo();
  record1.displayRecord();
  LibraryManagement library = LibraryManagement(book1, member1);
  library.Books.add(book1);
  library.Books.add(book2);
  library.Books.add(book3);
  library.Books.add(book4);
  library.listBooks();
}

class Book {
  String title;
  String author;
  String? publishyear;

  Book(this.title, this.author, [this.publishyear]);
  void displayInfo() {
    print(
      "title:$title, author:$author, publishyear:${publishyear ?? 'Unknown'}",
    );
  }
}

class Member {
  String name;
  String id;
  String? email;

  Member(this.name, this.id, this.email);
  void memberInfo() {
    print("name : $name,id:$id,email:$email");
    if (email == null) {
      print("email not provided");
    }
  }
}

class Records {
  String booktitle;
  String membername;
  String LoanDate;
  String? returnDate;
  Records(this.booktitle, this.membername, this.LoanDate, [this.returnDate]);
  void displayRecord() {
    print(
      "booktitle:$booktitle, membername:$membername, LoanDate:$LoanDate, returnDate:  ",
    );

    if (returnDate == null) {
      print("book is not returned");
    } else {
      print("returnDate:$returnDate");
    }
  }
}

class LibraryManagement {
  List<Book> Books = [];
  List<Member> members = [];
  Book book;
  Member member;
  LibraryManagement(this.book, this.member);
  void listBooks() {
    for (var Book in Books) {
      print(
        "Book title: ${Book.title}, Publish Year: ${Book.publishyear ?? 'Unknown'}",
      );
    }
  }
}
