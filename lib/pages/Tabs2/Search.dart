import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  final String title;
  const Search({Key? key, this.title = '搜索界面'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
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
