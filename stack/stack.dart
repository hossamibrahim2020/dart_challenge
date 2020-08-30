import 'dart:collection';

class Stack<T> {
  final ListQueue<T> _stack = ListQueue<T>();
  bool get isEmptyStack => _stack.isEmpty;
  bool get isNotEptyStack => _stack.isNotEmpty;
  ListQueue<T> get stackValue => _stack;

  void push(T element) {
    _stack.addLast(element);
  }

  T pop() {
    T item = _stack.last;
    _stack.removeLast();
    return item;
  }

  T top() {
    return _stack.last;
  }

  int size() {
    return _stack.length;
  }
}

main() {
  Stack stack = Stack();
  stack.push('h');
  stack.push('o');
  stack.push('o');
  stack.pop();
  stack.push('s');
  stack.push('s');
  stack.push('a');
  stack.push('m');
  print(stack.size().toString());
  print(stack.stackValue);
}
