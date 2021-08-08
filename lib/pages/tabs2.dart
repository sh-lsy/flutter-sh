import 'package:flutter/material.dart';
import 'Tabs2/Home.dart';

class Tabs extends StatefulWidget {
  Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ZWLNB'),
      ),
      body: Center(
        child: HomePage(),
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
    );
  }
}
