import 'challenge1_print_in_reverse.dart';

Node<T>? reverseList<T>(Node<T>? head) {
  Node<T>? prev;
  Node<T>? current = head;

  while (current != null) {
    Node<T>? next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }

  return prev;
}

void printList<T>(Node<T>? node) {
  while (node != null) {
    print(node.data);
    node = node.next;
  }
}

void main() {
  Node<int> head = Node(1);
  head.next = Node(2);
  head.next!.next = Node(3);

  Node<int>? reversed = reverseList(head);
  print("Reversed list:");
  printList(reversed);
}
