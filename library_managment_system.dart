void main() {
  Book book1 = Book("atomic habit", "steve", "2378648", true);
  Book book2 = Book("7habits", "john", "27346782", true);

  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);

  library.listBooks();

  Member member = Member("John Doe", "M001", "ukasha@gmail.com");
  library.loanBook(member, book1);
  library.listLoanBooks();
  library.listBooks();
}

class Book {
  String title;
  String auther;
  String isbn;
  bool isAvailable;
  Book(this.title, this.auther, this.isbn, this.isAvailable);
}

class Library {
  List<Book> books = [];
  List<Loan> loans = [];

  void loanBook(Member member, Book book) {
    if (book.isAvailable) {
      book.isAvailable = false;
      loans.add(Loan(book, member, DateTime.now()));
    } else {
      print("${book.title}is not available for loan");
    }
  }

  void addBook(Book book) {
    books.add(book);
  }

  void listBooks() {
    for (var book in books) {
      print(
        "Title: ${book.title}, Auther:${book.auther},isbn:${book.isbn},isAvailable:${book.isAvailable}",
      );
    }
  }

  void listLoanBooks() {
    for (var loan in loans) {
      print(
        "Title: ${loan.book.title}, Auther:${loan.book.auther},isbn:${loan.book.isbn},isAvailable:${loan.book.isAvailable}",
      );
    }
  }
}

class Member {
  String name;
  String memberId;
  String email;
  Member(this.name, this.memberId, this.email);
}

class Loan {
  Book book;
  Member member;
  DateTime LoanDate;
  DateTime? ReturnDate;
  bool? isreturned;
  Loan(this.book, this.member, this.LoanDate, [this.ReturnDate]);

  void returnBook() {
    ReturnDate = DateTime.now();
    book.isAvailable = true;
  }
}
