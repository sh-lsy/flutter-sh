import 'package:flutter/material.dart';

class JiaoYan extends StatefulWidget {
  JiaoYan({Key? key}) : super(key: key);

  @override
  _JiaoYanState createState() => _JiaoYanState();
}

class _JiaoYanState extends State<JiaoYan> {
  var userName;
  var pwd;
  var aaa = '11';
  GlobalKey<FormState> formGlobalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单校验'),
      ),
      body: Form(
        key: formGlobalKey,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                child: Center(
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey[300],
                    ),
                    items: [
                      DropdownMenuItem(
                        child: Text('111'),
                        value: '11',
                      ),
                      DropdownMenuItem(
                        child: Text('222'),
                        value: '22',
                      ),
                      DropdownMenuItem(
                        child: Text('333'),
                        value: '333',
                      )
                    ],
                    value: aaa,
                    onChanged: (value) {
                      print(aaa);
                      setState(() {
                        this.aaa = value as String;
                      });
                      print(aaa);
                    },
                    isDense: false,
                  ),
                ),
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '请输入用户',
                  labelText: '用户名',
                  icon: Icon(Icons.people),
                ),
                validator: (v) {
                  if (v == null || v.length == 0) {
                    return "用户名不能为空";
                  } else if (v.length < 6) {
                    return "用户名过短";
                  } else if (v.length > 12) {
                    return "用户名过长";
                  } else {
                    return null;
                  }
                },
                onSaved: (v) {
                  this.userName = v;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '请输入密码',
                  labelText: '密码',
                  icon: Icon(Icons.lock),
                ),
                controller: pwd,
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (formGlobalKey.currentState!.validate()) {
                      formGlobalKey.currentState!.save();
                      print(userName);
                    }
                  },
                  child: Text('登录'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
