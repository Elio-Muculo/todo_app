import 'package:flutter/material.dart';
import 'package:todo_app/core/app_images.dart';

class AppBarWIdget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWIdget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 21),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AppImages.allTasks),
          IconButton(
              onPressed: () { }, 
              icon: Image.asset(AppImages.menu))
        ],
      ),
    );
  }


  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(200);
}
