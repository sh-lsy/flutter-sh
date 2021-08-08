import 'package:flutter/material.dart';

class TabControllerPage extends StatefulWidget {
  TabControllerPage({Key? key}) : super(key: key);

  @override
  _TabControllerPageState createState() => _TabControllerPageState();
}

class _TabControllerPageState extends State<TabControllerPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void dispose() {
    // 组件销毁生命周期函数
    super.dispose();
    _tabController.dispose();
  }

  void initState() {
    // 生命周期函数
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          controller: this._tabController, // 必须带上
          tabs: [
            Tab(text: '热门'),
            Tab(text: '推荐'),
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController, // 必须带上
        children: [
          Center(
            child: Text('热门'),
          ),
          Center(
            child: Text('推荐'),
          ),
        ],
      ),
    );
  }
}
