import 'challenge1_print_in_reverse.dart';

Node<T>? removeAllOccurrences<T>(Node<T>? head, T value) {
  while (head != null && head.data == value) {
    head = head.next;
  }

  Node<T>? current = head;

  while (current?.next != null) {
    if (current!.next!.data == value) {
      current.next = current.next!.next;
    } else {
      current = current.next;
    }
  }

  return head;
}
void printList<T>(Node<T>? node) {
  while (node != null) {
    print(node.data);
    node = node.next;
  }
}
void main() {
  Node<int> head = Node(2);
  head.next = Node(1);
  head.next!.next = Node(2);
  head.next!.next!.next = Node(3);
  head.next!.next!.next!.next = Node(2);

  head = removeAllOccurrences(head, 2)!;
  print("List after removing all 2s:");
  printList(head);
}
