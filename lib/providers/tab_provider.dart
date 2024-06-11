import 'package:flutter/material.dart';

class TabProvider extends ChangeNotifier {
  int _selectedPageIndex = 2;

  int get selectedPageIndex => _selectedPageIndex;

  void changePage(int index) {
    _selectedPageIndex = index;
    notifyListeners();
  }
}
