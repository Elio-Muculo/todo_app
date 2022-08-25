import 'package:flutter/material.dart';
import 'package:todo_app/features/main_page/controller/homepagecontroller.dart';

class InheritedCounter extends InheritedWidget {
  const InheritedCounter({required Widget child, required this.counter})
  : super(child: child);

  final HomeController counter;

  @override
  bool updateShouldNotify(InheritedCounter oldWidget) {
    return oldWidget.counter.value != counter.value;
  }

}