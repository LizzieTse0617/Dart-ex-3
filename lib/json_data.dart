import 'dart:convert';

class JSONData {
  static String sampleJSON = '''
  [
    {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
    {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
    {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
    {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
  ]
  ''';

  static List<Map<String, String>> getInitialData() {
    final List<dynamic> jsonData = jsonDecode(sampleJSON);
    final List<Map<String, String>> castedData = [];

    for (final item in jsonData) {
      if (item is Map<String, String>) {
        castedData.add(item);
      } else if (item is Map<String, dynamic>) {
        // Handle cases where data may not be correctly structured
        castedData.add({
          'first': item['first'] ?? '',
          'last': item['last'] ?? '',
          'email': item['email'] ?? '',
        });
      }
    }

    return castedData;
  }
}
