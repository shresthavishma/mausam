import 'package:flutter/material.dart';

class ReOrderListLocation extends ChangeNotifier {
  List<String> item = [
    "Clients",
    "Designer",
    "Developer",
    "Director",
    "Employee",
    "Manager",
    "Worker",
    "Owner"
  ];

  void setRecord(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
      notifyListeners();
    }
    final items = item.removeAt(oldIndex);
    item.insert(newIndex, items);
    notifyListeners();
  }

  void sorting() {
    item.sort();
    notifyListeners();
  }
}
