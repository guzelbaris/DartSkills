class MyStack<T> {
  List<T> _list = [];

  /// Adds [element] to the top of the stack. Example before:[1,2,3] - after: 1,2,3,[element] 
  void push(T element) {
    _list.add(element);
  }

  /// Removes last element from stack before:[1,2,3,4] - after: [1,2,3] 
  T pop() {
    return _list.removeLast();
  }

  /// prints all elements in the stack
  void printAll() {
    for (T element in _list) {
      print(element);
    }
  }

  /// prints all elements in the stack in order
  void printOrder() {
    for (int i=0;i<this._list.length;i++) {
      print("${i+1}. element is: ${this._list[i]}");
    }
  }

  /// returns element at [a] location of the stack
  T elementAt(int a){
    return _list[a];
  }
}