import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  MyForm({Key? key}) : super(key: key);

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('表单组件'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextField(),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: '请输入',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  maxLines: 3,
                  maxLength: 100,
                  decoration: InputDecoration(
                    hintText: '多行文本框',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: '密码框',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  decoration: InputDecoration(
                    hintText: '用户名',
                    border: OutlineInputBorder(),
                    labelText: '用户名',
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '密码框',
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
