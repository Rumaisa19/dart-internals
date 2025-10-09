/**Create a class Book with:Properties: title, author, A method describe() that prints: "The book '<title>' is written by <author>."
Then create 2 books in main() and call their describe() methods 📚 */

class Book {
  String? title;
  String? author;
  void describe() {
    print("The book $title is written by $author.");
  }
}

void main() {
  Book book_1 = Book();
  book_1.title = 'Atomic Habit';
  book_1.author = 'James';
  Book book_2 = Book();
  book_2.title = 'The Alchemist';
  book_2.author = 'Jabir-bin-Hayan';
  book_1.describe();
  book_2.describe();
}
