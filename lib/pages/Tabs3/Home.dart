import 'package:flutter/material.dart';
// import 'Search.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/Home";
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/search', arguments: {
                'title': '命名参数111',
                'id': 12,
                'detail': '详情2333'
              });
            },
            child: Text('去搜索界面'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/prodcut',
                  arguments: {'title': '产品111', 'id': 12, 'detail': '产品2333'});
            },
            child: Text('去搜索界面带参数'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/appBarDemo',
              );
            },
            child: Text('AppBarDemo'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/appBarDemo1',
              );
            },
            child: Text('AppBarDemo1'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/Mybutton',
              );
            },
            child: Text('Mybutton按钮组件合集'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/MyForm',
              );
            },
            child: Text('MyForm初体验'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/MyForm1',
              );
            },
            child: Text('MyForm表单组件默认赋值'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/datePicker',
              );
            },
            child: Text('DatePicker日期组件'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/MySwiper',
              );
            },
            child: Text('MySwiper'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/myDialog',
              );
            },
            child: Text('MyDialog组件'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/getPost',
              );
            },
            child: Text('getPost练习'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/jiaoyan',
              );
            },
            child: Text('表单校验'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/demo',
              );
            },
            child: Text('练习demo界面'),
          ),
        ],
      ),
    ));
  }
}
