import 'package:flutter/material.dart';
import 'package:todo_app/core/app_images.dart';

class AppBarWIdget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWIdget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 21),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(AppImages.allTasks),
            IconButton(
                iconSize: 40,
                onPressed: () { }, 
                icon: Image.asset(AppImages.menu))
          ],
        ),
      ),
    );
  }


  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(140);
}
