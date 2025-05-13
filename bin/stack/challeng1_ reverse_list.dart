void reverseList(List<dynamic> list) {
  List<dynamic> stack = [];

  for (var item in list) {
    stack.add(item);
  }
  while (stack.isNotEmpty) {
    print(stack.removeLast());
  }
}

void main() {
  List<int> myList = [1, 2, 3, 4, 5];
  print("List in reverse order:");
  reverseList(myList);
}
