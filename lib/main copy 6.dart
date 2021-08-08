import 'package:flutter/material.dart';
import 'res/listData.dart';

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
          child: HomePage(),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.deepOrange), // 定义主题
    );
  }
}

class HomePage extends StatelessWidget {
  List<Widget> _getDate() {
    // List<Widget> list = [];
    // for (var i = 0; i < 20; i++) {
    //   list.add(
    //     ListTile(
    //       leading: Icon(Icons.ac_unit_sharp),
    //       title: Text('ac_unit_sharp-----$i'),
    //     ),
    //   );
    // }
    var list1 = listData.map(
      (v) {
        return ListTile(
          leading: Image.network(
            v['img'],
            width: 100,
            // height: 200,
            fit: BoxFit.cover,
          ),
          title: Text(v['title']),
          subtitle: Text(v['content']),
        );
      },
    );
    return list1.toList();
    // return [
    //   ListTile(
    //     leading: Icon(Icons.ac_unit_sharp),
    //     title: Text('ac_unit_sharp'),
    //   ),
    //   ListTile(
    //     leading: Icon(Icons.access_alarms_rounded),
    //     title: Text('access_alarms_rounded'),
    //   ),
    //   ListTile(
    //     leading: Icon(Icons.accessible_forward),
    //     title: Text('accessible_forward'),
    //   ),
    // ];
  }

  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   children: this._getDate(),
    // );
    return ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(
              listData[index]['img'],
              width: 100,
              // height: 200,
              fit: BoxFit.cover,
            ),
            title: Text(listData[index]['title']),
            subtitle: Text(listData[index]['content'] + '12121'),
          );
        });
  }
}
