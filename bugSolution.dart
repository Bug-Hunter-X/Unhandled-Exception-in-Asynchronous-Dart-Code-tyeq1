```dart
import 'dart:async';
import 'dart:io';

Future<void> fetchData() async {
  try {
    await Future.delayed(Duration(seconds: 2));
    // Simulate a network error
    throw Exception('Network request failed');
  } on TimeoutException catch (e) {
    print('Timeout: $e');
    rethrow; // Re-throw to be handled by a higher-level function
  } on SocketException catch (e) {
    print('Socket exception: $e');
    //Handle socket exception, perhaps retrying the operation
  } catch (e) {
    print('Error: $e');
  }
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully!');
  } on TimeoutException catch (e) {
    print('Main Function Caught Timeout: $e');
  } catch (e) {
    print('Main Function Caught Error: $e');
  }
}
```