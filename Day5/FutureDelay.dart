import 'dart:async'; // Import dart:async to use Future and Timer

void main() {
  print('Start of main');
  
  // Using Future.delayed to simulate an asynchronous delay
  Future.delayed(Duration(seconds: 2), () {
    print('Delayed operation complete after 2 seconds');
    return 42; // Return a value after delay
  }).then((result) {
    print('Result after delay: $result');
  });

  print('End of main');
}
