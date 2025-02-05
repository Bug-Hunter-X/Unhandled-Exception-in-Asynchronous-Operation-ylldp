```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print(data);
    } else {
      // Provide more context in the error message
      throw Exception('Failed to load data. Status code: ${response.statusCode}, Body: ${response.body}');
    }
  } on SocketException {
    // Handle socket exceptions specifically
    print('Network error: Could not connect to the server.');
  } on FormatException catch (e) {
    //Handle JSON decoding errors
    print('Error decoding JSON: $e');
  } catch (e) {
    //Handle other exceptions
    print('An unexpected error occurred: $e');
  }
}
```