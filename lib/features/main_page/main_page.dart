import 'package:flutter/material.dart';
import 'package:todo_app/features/main_page/widgets/app_bar/app_bar_widget.dart';


class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWIdget(),
    );
  }
}
