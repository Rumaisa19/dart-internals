/**📝 Create a map marks = {'Math': 90, 'English': 85, 'Science': 78}
Add 'Computer': 95
Update 'Science' to 88
Remove 'English'
Then print each subject and mark using forEach */
void main() {
  Map<String, int> marks = {'Math': 90, 'English': 85, 'Science': 78};
  marks['Computer'] = 95;
  marks['Science'] = 88;
  marks.remove('English');
  marks.forEach((key, value) => print('$key: $value'));
}
