import 'package:flutter/material.dart';

class SearchIconProvider extends ChangeNotifier {
  late bool _isIconSeach = false;

  bool get isIconSearch => _isIconSeach;

  void searchIcon() {
    _isIconSeach = !_isIconSeach;
    notifyListeners();
  }
}
