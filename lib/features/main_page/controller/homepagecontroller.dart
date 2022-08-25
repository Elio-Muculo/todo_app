
import 'package:flutter/material.dart';

// class HomeController extends ValueNotifier<int> {
//   HomeController({int? value}) : super(value ?? 0);
//
//   void increment() {
//     value++;
//   }
//
// }


class HomeController extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }

}