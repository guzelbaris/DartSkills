// Define a Counter class using lexical closures
class Counter {
  int _count = 0; // Private variable to store the counter value

  // Method to increment the counter
  void increment() {
    _count++;
  }

  // Method to decrement the counter
  void decrement() {
    _count--;
  }

  // Method to retrieve the current counter value
  int getCount() {
    return _count;
  }

  // Method to create and return a closure for custom counting operations
  Function makeCustomCounter(int step) {
    return () {
      _count += step; // Accesses and modifies the '_count' variable from the outer scope
    };
  }
}

void main() {
  // Create an instance of the Counter class
  var counter = Counter();

  // Use the counter object to perform basic operations
  counter.increment();
  counter.increment();
  counter.decrement();

  // Print the current counter value
  print('Current Counter Value: ${counter.getCount()}'); // Output: 1

  // Create a custom counter function using a closure
  var customCounter = counter.makeCustomCounter(5);

  // Use the custom counter function to perform custom counting operations
  customCounter(); // Increment by 5
  customCounter(); // Increment by 5 again

  // Print the updated counter value after custom operations
  print('Updated Counter Value: ${counter.getCount()}'); // Output: 11
}
