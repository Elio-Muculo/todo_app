
import 'package:flutter/material.dart';

class HomeController extends ValueNotifier<int> {
  HomeController({int? value}) : super(value ?? 0);

  void increment() {
    value++;
  }

}