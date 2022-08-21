import 'package:flutter/material.dart';
import 'package:todo_app/core/app_images.dart';
import 'package:todo_app/features/main_page/widgets/app_bar/app_bar_widget.dart';
import 'package:todo_app/features/main_page/widgets/tabbar/tabbar_widget.dart';


class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWIdget(),
      body: const TabBarWidget(),
      floatingActionButton: IconButton(
        iconSize: 60,
        onPressed: () { },
        icon: Image.asset(AppImages.circle, width: 60, height: 60,),
      ),
      bottomNavigationBar: Row(
        children: const [
          Icon(Icons.abc),
          Icon(Icons.abc)
        ],
      ),
    );
  }
}
