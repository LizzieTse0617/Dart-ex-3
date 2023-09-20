class Students {
  List<Map<String, String>> people = [];

  Students(List<Map<String, String>> initialData) {
    people.addAll(initialData);
  }

void sort(String field) {
  people.sort((a, b) => (a[field] ?? '').compareTo(b[field] ?? ''));
}


  void output() {
    for (var person in people) {
      print('First Name: ${person['first']}');
      print('Last Name: ${person['last']}');
      print('Email: ${person['email']}');
      print('---------------');
    }
  }

  void plus(Map<String, String> person) {
    people.add(person);
  }

  void remove(String field, String value) {
    people.removeWhere((person) => person[field] == value);
  }
}
