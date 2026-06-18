class MinStack {
  List<int> stack = [];
  List<int> minStack = [];

  MinStack() {}
  void push(int value) {
    stack.add(value);
    if (stack.length == 1) {
      minStack.add(value);
    } else if (minStack.last > value) {
      minStack.add(value);
    } else {
      minStack.add(minStack[minStack.length - 1]);
    }
  }
  void pop() {
    stack.removeLast();
    minStack.removeLast();
  }

  int top() {
    return stack.last;
  }

  int getMin() {
    return minStack.last;
  }
}


