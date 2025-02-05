```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the response
      final data = jsonDecode(response.body);
      // Use the data
      print(data);
    } else {
      // Handle errors appropriately
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e');
    // Re-throw the exception to be handled further up the call stack if needed.
    rethrow;
  }
}
```