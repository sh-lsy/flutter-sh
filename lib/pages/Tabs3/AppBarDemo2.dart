import 'package:flutter/material.dart';

class AppBarDemo2 extends StatelessWidget {
  const AppBarDemo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: TabBar(
              tabs: [
                Tab(text: '热门'),
                Tab(text: '推荐'),
              ],
            ),
            // title: Row(
            //   children: [
            //     Expanded(
            //       child: TabBar(
            //         tabs: [
            //           Tab(text: '热门'),
            //           Tab(text: '推荐'),
            //         ],
            //       ),
            //     )
            //   ],
            // ),
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
