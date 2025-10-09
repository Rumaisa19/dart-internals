// Create a Map of book titles and authors. Print all book titles, then all authors.

void main() {
  Map<String, String> stories = {
    'Atomic Habits': 'By James Wiesly',
    'Heroic': 'By Williams',
  };

  print('\n📚 Book Titles:');
  for (var title in stories.keys) {
    print("- $title");
  }

  print('\n👨‍💼 Authors:');
  for (var author in stories.values) {
    print("- $author");
  }
}
