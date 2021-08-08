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
        body: Wrap(
          spacing: 15, // 主轴之间距离 默认横向子元素距离
          runSpacing: 5, //副轴之间距离 默认纵向行之间距离
          alignment: WrapAlignment.start, // 以第一行宽度为基准
          children: [
            MyBtn(
              text: 'testa',
            ),
            MyBtn(
              text: 'testa211',
            ),
            MyBtn(
              text: 'testa11',
            ),
            MyBtn(
              text: 'tes',
            ),
            MyBtn(
              text: 'testa233',
            ),
            MyBtn(
              text: 'testa11',
            ),
            MyBtn(
              text: 'testa666666',
            ),
            MyBtn(
              text: 'testa111',
            ),
          ],
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.deepOrange), // 定义主题
    );
  }
}

class MyBtn extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  MyBtn(
      {this.text = '按钮',
      this.color = Colors.red,
      this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(this.text),
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(this.color),
        foregroundColor: MaterialStateProperty.all(this.textColor),
      ),
    );
  }
}
