import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  // final String title;
  // const Search({Key? key, this.title = '搜索界面'}) : super(key: key);
  final arguments;
  // args表示可能传入的参数列表
  Search({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments != null ? arguments['title'] : 'test'),
      ),
      body: Center(
        child: Text(arguments != null ? arguments['detail'] : 'test'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('返回'),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text('返回'),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      // ),
    );
  }
}
