import 'package:flutter/material.dart';
import 'package:todo_app/core/app_images.dart';

class AppBarWIdget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWIdget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(blurRadius: 6.0, color: Colors.black26, blurStyle: BlurStyle.outer)
            ]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 21),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(AppImages.allTasks),
              PopupMenuButton(
                  tooltip: 'Menu',
                  iconSize: 40,
                  icon: Image.asset(AppImages.menu),
                  onSelected: (value) {
                    if (value == '/contact') {
                      print('helloo');
                    }
                  }, itemBuilder: (BuildContext context) {
                return const [
                  PopupMenuItem(
                    child: Text("Hello"),
                    value: '/hello',
                  ),
                  PopupMenuItem(
                    child: Text("About"),
                    value: '/about',
                  ),
                  PopupMenuItem(
                    child: Text("Contact"),
                    value: '/contact',
                  )
                ];
              }),
            ],
          ),
        ),
      ),
    );
  }


  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(140);
}
