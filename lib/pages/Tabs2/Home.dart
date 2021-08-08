import 'package:flutter/material.dart';
import 'Search.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Search(),
              ));
            },
            child: Text('去搜索界面'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Search(title: '带参数的详情233'),
              ));
            },
            child: Text('去搜索界面带参数'),
          ),
        ],
      ),
    );
  }
}
