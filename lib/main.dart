import 'package:flutter/material.dart';
import 'package:todo_app/features/main_page/controller/Inheritedcounter.dart';
import 'package:todo_app/features/main_page/controller/homepagecontroller.dart';
import 'package:todo_app/features/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return InheritedLouver(
      count: HomeState(),
      child: InheritedCounter(
        counter: HomeController(),
        child: const MaterialApp(
          title: 'Todo App',
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
          // onGenerateRouteroutes: ,
        ),
      ),
    );
  }
}
