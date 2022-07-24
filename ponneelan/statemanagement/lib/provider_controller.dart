import 'package:flutter/material.dart';

class counter with ChangeNotifier {
  int _count = 0;
  int get Finalcount => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decreament() {
    _count--;
    notifyListeners();
  }

  void setZero() {
    _count = 0;
    notifyListeners();
  }
}

class shopping with ChangeNotifier {}
