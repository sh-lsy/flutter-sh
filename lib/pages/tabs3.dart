import 'package:flutter/material.dart';
import 'Tabs3/Home.dart';
import 'Tabs3/AppBarDemo2.dart';
import 'Tabs3/AppBarDemo3.dart';
import 'Tabs3/TabController.dart';

class Tabs extends StatefulWidget {
  Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List list = [
    HomePage(),
    AppBarDemo2(),
    AppBarDemo3(),
    TabControllerPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ZWLNB'),
      ),
      body: Center(
        child: list[this._currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // 当有3个以上的元素，则需要显式设置
        iconSize: 30,
        selectedItemColor: Colors.lightBlue, // 选中active颜色
        currentIndex: this._currentIndex, // 设置默认选中
        // fixedColor: Colors.orange,
        onTap: (int i) {
          setState(() {
            this._currentIndex = i;
          });
          print(i);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: '分类'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '设置'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '我的'),
        ],
      ),
      drawer: Drawer(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: DrawerHeader(
                      child: Text('DrawerHeader'),
                      decoration: BoxDecoration(color: Colors.lightBlue),
                    ),
                  )
                ],
              ),
              // SizedBox(
              //   height: 100,
              // ),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.home)),
                title: Text('首页'),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.settings)),
                title: Text('设置中心'),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.person)),
                title: Text('个人中心'),
                onTap: () {
                  Navigator.of(context).pop(); // 隐藏侧边栏 避免返回时侧边栏还在
                  Navigator.pushNamed(context, '/search', arguments: {
                    'title': '侧边栏用户中心跳转',
                    'id': 12,
                    'detail': '侧边栏用户中心跳转23333333333333'
                  });
                },
              ),
              Divider(),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(
        child: Center(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/11.jpg'),
                ),
                accountName: Text('用户：阿栋'),
                accountEmail: Text('邮箱：aaa@.com'),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'http://img5.mtime.cn/mt/2021/06/11/115301.79155425_1280X720X2.jpg'),
                      fit: BoxFit.fill),
                ),
              ),
              Text('endDrawer'),
            ],
          ),
        ),
      ),
    );
  }
}
