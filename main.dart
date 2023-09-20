import './lib/students.dart';
import './lib/json_data.dart';

void main() {
  List<Map<String, String>> initialData = JSONData.getInitialData();
  Students students = Students(initialData);

  // Call methods to test functionality
  students.sort('first');
  students.output();
  students.plus({'first': 'John', 'last': 'Doe', 'email': 'johndoe@example.com'});
  students.remove('email', 'shaha@algonquincollege.com');
}
