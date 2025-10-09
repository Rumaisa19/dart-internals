// Write a function that counts the number of vowels in a sentence.

// countVowels(String sentence) {
//   int count = 0;
//   List<String> vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
//   List<String> sentenceWords = [];
//   sentenceWords = sentence.split('');

//   for (int i = 0; i < vowels.length; i++) {
//     for (int j = 0; j < sentenceWords.length; j++) {
//       if (vowels[i] == sentenceWords[j]) {
//         count++;
//       }
//     }
//   }
//   return count;
// }
int countVowels(String sentence) {
  int count = 0;
  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];

  for (var char in sentence.toLowerCase().split('')) {
    if (vowels.contains(char)) {
      count++;
    }
  }
  return count;
}
void main() {
  print(countVowels('Rumaisa'));
}
