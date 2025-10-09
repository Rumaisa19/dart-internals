List flattenList(dynamic inputList) {
  List result = [];
  for (var item in inputList) {
    if (item is List) {
      result.addAll(flattenList(item)); // Recursive call
    } else {
      result.add(item);
    }
  }
  return result;
}

void main() {
  var nestedList = [
    1,
    [2, 3],
    [
      [4, 5],
      6,
    ],
    7,
  ];
  var flatList = flattenList(nestedList);
  print(flatList);
}
