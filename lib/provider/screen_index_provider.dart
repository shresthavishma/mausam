import 'package:flutter/material.dart';

class ScreenIndexProvider extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  currentScreenIndex(int value) {
    _currentIndex = value;
    notifyListeners();
  }
}
