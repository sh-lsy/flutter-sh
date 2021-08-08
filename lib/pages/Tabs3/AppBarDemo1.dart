import 'package:flutter/material.dart';

class AppBarDemo1 extends StatelessWidget {
  const AppBarDemo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text('AppBar'),
            backgroundColor: Colors.lightBlueAccent,
            centerTitle: true,
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   onPressed: () {
            //     print('11111');
            //   },
            // ),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print('search');
                },
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(text: '热门'),
                Tab(text: '推荐'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text('热门'),
              ),
              Center(
                child: Text('推荐'),
              ),
            ],
          )),
    );
  }
}
