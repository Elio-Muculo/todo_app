import 'package:flutter/material.dart';
import 'package:todo_app/features/main_page/controller/homepagecontroller.dart';

class InheritedCounter extends InheritedWidget {
  const InheritedCounter({required Widget child, required this.counter})
  : super(child: child);

  final HomeController counter;

  static InheritedCounter of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType()!;
  }

  @override
  bool updateShouldNotify(InheritedCounter oldWidget) {
    return oldWidget.counter.counter != counter.counter;
  }

}



class InheritedLouver extends InheritedNotifier<HomeState> {
  const InheritedLouver({required Widget child, required this.count})
      : super(child: child, notifier: count);

  final HomeState count;

  static InheritedLouver of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedLouver>()!;
  }
}
