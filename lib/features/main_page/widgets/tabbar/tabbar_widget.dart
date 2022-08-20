import 'package:flutter/material.dart';


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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 21),
      alignment: Alignment.center,
      child: TabBar(
        isScrollable: true,
        labelColor: Colors.black,
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
    );
  }
}
