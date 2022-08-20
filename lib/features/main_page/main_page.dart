import 'package:flutter/material.dart';
import 'package:todo_app/features/main_page/widgets/app_bar/app_bar_widget.dart';
import 'package:todo_app/features/main_page/widgets/tabbar/tabbar_widget.dart';


class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWIdget(),
      body: Column(
        children: [
          const TabBarWidget()
        ],
      ),
      floatingActionButton: IconButton(
        icon: Image.asset(),
      ),
    );
  }
}
