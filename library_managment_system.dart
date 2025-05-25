void main() {
  Book book1 = Book("atomic habit", "steve", "2378648", true);
  Book book2 = Book("7habits", "john", "27346782", true);

  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);

  library.listBooks();
}

class Book {
  String? title;
  String? auther;
  String? isbn;
  bool? isAvailable;
  Book(this.title, this.auther, this.isbn, this.isAvailable);
}

class Library {
  List<Book> books = [];
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
}

class Memeber {
  String? name;
  String? memberId;
  String? email;
}

class Loan {
  Book book;
  Memeber member;
  DateTime LoanDate;
  DateTime? ReturnDate;
  bool ?isreturned;
  Loan(
    this.book,
    this.member,
    this.LoanDate,
    [this.ReturnDate]
    
  ) ;

    void returnBook() {
      ReturnDate = DateTime.now();
      book.isAvailable = true;
    
  }
}
