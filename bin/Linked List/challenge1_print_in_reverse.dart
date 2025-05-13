class Node<T> {
  T data;
  Node<T>? next;

  Node(this.data);
}

void printInReverse<T>(Node<T>? node) {
  if (node == null) return;

  printInReverse(node.next);
  print(node.data);
}

void main() {
  Node<int> head = Node(1);
  head.next = Node(2);
  head.next!.next = Node(3);

  print("Linked list in reverse:");
  printInReverse(head);
}
