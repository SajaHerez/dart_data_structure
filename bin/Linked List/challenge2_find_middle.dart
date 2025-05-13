import 'challenge1_print_in_reverse.dart';

Node<T>? findMiddle<T>(Node<T>? head) {
  Node<T>? slow = head;
  Node<T>? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;
  }

  return slow;
}

void main() {
  Node<int> head = Node(1);
  head.next = Node(2);
  head.next!.next = Node(3);
  head.next!.next!.next = Node(4);
  head.next!.next!.next!.next = Node(5);

  Node<int>? middle = findMiddle(head);
  print("Middle node: ${middle?.data}"); // output: 3
}
