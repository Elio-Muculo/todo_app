import 'package:flutter/material.dart';
import 'package:todo_app/core/app_images.dart';
import 'package:todo_app/features/main_page/main_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const MainPage()
      ));
    });

    return Scaffold(
      body: Center(
        child: Image.asset(AppImages.todoLogo)
      )
    );
  }
}
