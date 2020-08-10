import 'package:flutter/material.dart';

class TabBarRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) => _TabBarWidget();
}

class _TabBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TabBarState();
}

class _TabBarState extends State<_TabBarWidget>
    with SingleTickerProviderStateMixin {
  List tabs = ["列表", "收藏夹", "派送单", "取消单"];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBar"),
        centerTitle: true,
        bottom: TabBar(
          tabs: tabs
              .map((e) => Tab(
                    text: e,
                    //text与child不能同时出现
                    //child:,
                  ))
              .toList(),
          //是否可滑动
          controller: _tabController,
          //文字颜色
          labelColor: Colors.white,
          //未选中的文字颜色
          unselectedLabelColor: Colors.black,
          //点击回调
          //onTap: _onTabBarTop,
        ),
      ),
      body: TabBarView(
          controller: _tabController,
          children: tabs
              .map((e) => Container(
                    alignment: Alignment.center,
                    child: Text(
                      e,
                      textScaleFactor: 5,
                    ),
                  ))
              .toList()),
    );
  }
}

void _onTabBarTop(int index) {
  print(index);
}
