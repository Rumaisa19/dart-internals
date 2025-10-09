//  Q4: Handle Nullable List
// Create a List<String>? called favBooks;
// If it is null, assign a list with 3 books.
// Print the first book only if the list is not null.
void main() {
  List<String>? favBooks;
  if (favBooks == null) {
    favBooks = ['1984', 'To Kill a Mockingbird', 'The Great Gatsby'];
  }
  if (favBooks != null && favBooks.isNotEmpty) {
    print(favBooks[0]);
  } else {
    print('No favourite book is available😊!');
  }
}
