import 'package:flutter/material.dart';
import 'package:todo_app/features/main_page/controller/Inheritedcounter.dart';
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

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 3, vsync: this);

  }

  @override
  Widget build(BuildContext context) {
    final counter = InheritedCounter.of(context).counter;
    final count = InheritedLouver.of(context).count;


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
                Center(child: AnimatedBuilder(
                  builder: (context, _) {
                    return Text(counter.counter.toString());
                  },
                  animation: counter,
                )),
                Center(
                    child: ValueListenableBuilder(
                      valueListenable: count,
                      builder: (context, value, _) {
                        return Text(value.toString());
                      }
                    )
                ),
                Center(child: Text('03')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
