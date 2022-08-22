import 'package:flutter/material.dart';
import 'package:todo_app/features/main_page/controller/homepagecontroller.dart';

import '../../main_page.dart';


class TabBarWidget extends StatefulWidget{
  const TabBarWidget({Key? key}) : super(key: key);


  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> with TickerProviderStateMixin  {
  late TabController _tabcontroller;

  TabController get tabController => _tabcontroller;
  // final counter = HomeController();

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 3, vsync: this);

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 21),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TabBar(
            isScrollable: true,
            labelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(width: 2.0),
                insets: EdgeInsets.symmetric(horizontal: 50.0)
            ),
            controller: tabController,
            tabs: const [
              Tab(text: "TODAY",),
              Tab(text: "TOMORROW",),
              Tab(text: "UPCOMINGS",)
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                Center(child: ValueListenableBuilder(
                  builder: (context, value, _) {
                    return Text(value.toString());
                  },
                  valueListenable: counter,
                )),
                Center(child: Text('02')),
                Center(child: Text('03')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
