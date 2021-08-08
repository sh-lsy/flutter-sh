import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 每行展示的数量
        mainAxisSpacing: 36, // 行之间相隔的间距
        crossAxisSpacing: 5, // 列之间相隔间距
        childAspectRatio: .75, // 宽高比
      ),
      children: [
        new Image.network(
            'http://img5.mtime.cn/mt/2021/04/13/154328.31480704_1280X720X2.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2020/12/28/102117.12342858_1280X720X2.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2021/06/10/125840.78677984_1280X720X2.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2021/06/02/143546.58967996_1280X720X2.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2021/06/23/144247.59352538_1280X720X2.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2021/04/29/101639.70040839_1280X720X2.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2021/06/28/164630.47464388_1280X720X2.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2021/06/11/115301.79155425_1280X720X2.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2021/05/25/160258.77696628_1280X720X2.jpg',
            fit: BoxFit.cover),
      ],
    );
  }
}
