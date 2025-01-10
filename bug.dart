```dart
import 'dart:async';

Future<void> fetchData() async {
  // Simulate an asynchronous operation that might throw an exception
  try {
    await Future.delayed(Duration(seconds: 2));
    // Simulate a network error
    throw Exception('Network request failed');
  } on TimeoutException catch (e) {
    print('Timeout: $e');
    //Rethrow the exception to be handled by a higher-level function
    rethrow;
  } on SocketException catch (e) {
    print('Socket exception: $e');
    //Handle socket exception
  } catch (e) {
    // Handle other exceptions
    print('Error: $e');
  }
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully');
  } catch (e) {
    print('Error: $e'); //This will catch TimeoutException and other exceptions
  }
}
```