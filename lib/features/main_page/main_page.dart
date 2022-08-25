import 'package:flutter/material.dart';
import 'package:todo_app/core/app_images.dart';
import 'package:todo_app/features/main_page/controller/Inheritedcounter.dart';
import 'package:todo_app/features/main_page/controller/homepagecontroller.dart';
import 'package:todo_app/features/main_page/widgets/app_bar/app_bar_widget.dart';
import 'package:todo_app/features/main_page/widgets/tabbar/tabbar_widget.dart';



class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final counter = InheritedCounter.of(context).counter;
    final count = InheritedLouver.of(context).count;

    return Scaffold(
      appBar: const AppBarWIdget(),
      body: const TabBarWidget(),
      floatingActionButton: IconButton(
        iconSize: 40,
        onPressed: () { counter.increment(); },
        icon: Image.asset(AppImages.circle, width: 60, height: 60,),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(blurRadius: 5.0, color: Colors.black26, blurStyle: BlurStyle.outer)
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  count.increment();
                },
                iconSize: 40,
                icon: Image.asset(AppImages.person),
              ),
              IconButton(
                onPressed: () {
                },
                iconSize: 40,
                icon: Image.asset(AppImages.marked),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
