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
        body: Center(
          child: Text(
            '1111',
            style: TextStyle(
              fontSize: 30.0,
              // color: Color(0xFFFF80AB),
              color: Color.fromRGBO(255, 200, 0, .6),
            ),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.deepOrange), // 定义主题
    );
  }
}
