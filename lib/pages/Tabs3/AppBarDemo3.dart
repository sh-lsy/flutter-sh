import 'package:flutter/material.dart';

class AppBarDemo3 extends StatelessWidget {
  const AppBarDemo3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: AppBar(
            title: TabBar(
              isScrollable: true, // 当有多个按钮时，进行滑动
              tabs: [
                Tab(text: '热门'),
                Tab(text: '推荐1'),
                Tab(text: '推荐2'),
                Tab(text: '推荐3'),
                Tab(text: '推荐4'),
                Tab(text: '推荐5'),
              ],
            ),
            backgroundColor: Colors.lightBlueAccent,
            centerTitle: true,
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print('search');
                },
              ),
            ],
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text('热门'),
              ),
              Center(
                child: Text('推荐1'),
              ),
              Center(
                child: Text('推荐2'),
              ),
              Center(
                child: Text('推荐3'),
              ),
              Center(
                child: Text('推荐4'),
              ),
              Center(
                child: Text('推荐5'),
              ),
            ],
          )),
    );
  }
}
