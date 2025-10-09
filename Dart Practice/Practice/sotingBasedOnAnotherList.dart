void main() {
  List list1 = [2, 1, 3, 4];
  List list2 = [2, 1, 4, 3];
  list1.sort((a, b) {
    return list2.indexOf(a).compareTo(list2.indexOf(b));
  });
  print(list1);
}
