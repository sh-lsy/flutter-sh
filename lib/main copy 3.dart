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
          child: Container(
            child: Image.asset(
              'images/11.jpg',
              // fit: BoxFit.cover,
              alignment: Alignment.centerLeft,
              color: Colors.greenAccent,
              colorBlendMode: BlendMode.multiply,
              // repeat: ImageRepeat.repeat,
            ),
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              // 利用Container 通过decoration image实现圆形图片
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(150),
              image: DecorationImage(
                image: AssetImage(
                  'images/11.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.deepOrange), // 定义主题
    );
  }
}
