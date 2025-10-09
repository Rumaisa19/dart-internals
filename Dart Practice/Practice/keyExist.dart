// Write a function `keyExists(Map<String, int> map, String key)` that checks if a given key exists in a map.
//If the key exists, return `true`; otherwise, return `false`.
void main() {
  Map<String, dynamic> data = {"Name": "Rabia", "Age": 22, "Weight": 42};
  bool result = keyExists(data);
  print(result);
}

keyExists(Map<String, dynamic> data) {
  bool result = data.containsKey("Color");
  return result;
}
