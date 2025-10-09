//  Write a function `mergeMaps(Map<String, int> map1, Map<String, int> map2)` that merges two maps, assuming the keys in both maps are unique.
//Return a new map that combines all key-value pairs from both maps.
void main() {
  Map<String, dynamic> map_1 = {"name": "Rumaisa Mushtaq"};
  Map<String, dynamic> map_2 = {"age": 19, "fav color": "Black"};
  Map<String, dynamic> result = mergeMaps(map_1, map_2);
  print(result);
}

Map<String, dynamic> mergeMaps(
    Map<String, dynamic> map_1, Map<String, dynamic> map_2) {
      // ... => spread operator
  Map<String, dynamic> result = {...map_1, ...map_2};
  return result;
}
