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
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.ac_unit_sharp,
                color: Colors.lightBlueAccent,
                size: 66,
              ),
              title: Text('ac_unit_sharp'),
              subtitle: Text('ac_unit_sharp'),
              trailing: Icon(Icons.home),
            ),
            ListTile(
              leading: Image.network(
                  'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF'),
              title: Text('access_alarms_rounded'),
            ),
            ListTile(
              leading: Icon(Icons.accessible_forward),
              title: Text('accessible_forward'),
            ),
          ],
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.deepOrange), // 定义主题
    );
  }
}
