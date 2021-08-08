import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('demo'),
        ),
        body: Container(
          child: HomePage(),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.deepOrange), // 定义主题
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 50),
          Chip(
            label: Text(
              '${this.count}',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.blue,
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              // this.count++; // 不能更改
              setState(() {
                // 状态组件才有
                this.count++;
              });
              print(this.count);
            },
            child: Text('按钮'),
          ),
        ],
      ),
    );
  }
}
