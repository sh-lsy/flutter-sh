import 'package:flutter/material.dart';

class MyForm1 extends StatefulWidget {
  MyForm1({Key? key}) : super(key: key);

  @override
  _MyForm1State createState() => _MyForm1State();
}

class _MyForm1State extends State<MyForm1> {
  var userName = new TextEditingController();
  var pwd = new TextEditingController();
  var sex = 1;
  bool flag = true;
  void _setSex(v) {
    setState(() {
      this.sex = v;
    });
  }

  List hobby = [
    {'checked': false, 'value': '睡觉'},
    {'checked': false, 'value': '吃饭'},
    {'checked': false, 'value': '撸代码'},
  ];
  List<Widget> _getHobby() {
    List<Widget> temp = [];
    for (var i = 0; i < this.hobby.length; i++) {
      // temp.add(Text(this.hobby[i]['value']));
      // temp.add(Checkbox(
      //     value: this.hobby[i]['checked'],
      //     onChanged: (v) {
      //       setState(() {
      //         this.hobby[i]['checked'] = !this.hobby[i]['checked'];
      //       });
      //     }));
      temp.addAll([
        Text(this.hobby[i]['value']),
        Checkbox(
            value: this.hobby[i]['checked'],
            onChanged: (v) {
              setState(() {
                this.hobby[i]['checked'] = !this.hobby[i]['checked'];
              });
            })
      ]);
    }
    return temp;
  }

  @override
  void initState() {
    super.initState();
    userName.text = '阿栋';
    // pwd.text = '';
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('表单组件'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            // child: TextDemo(),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '请输入用户',
                  ),
                  controller: userName,
                ),
                SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '请输入密码',
                  ),
                  controller: pwd,
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      print(userName.text);
                      print(pwd.text);
                    },
                    child: Text('登录'),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(
                      value: this.flag,
                      onChanged: (v) {
                        print(v);
                        setState(() {
                          this.flag = !this.flag;
                        });
                      },
                      activeColor: Colors.lightBlue,
                    ),
                    Text(this.flag ? '选中' : '未选中'),
                  ],
                ),
                CheckboxListTile(
                  value: this.flag,
                  title: Text('主标题'),
                  subtitle: Text('副标题'),
                  secondary: Icon(Icons.person),
                  onChanged: (v) {
                    setState(() {
                      this.flag = !this.flag;
                    });
                  },
                  selected: this.flag,
                ),
                Divider(),
                Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: this.sex,
                      onChanged: this._setSex,
                    ),
                    Text('男'),
                    Radio(
                      value: 2,
                      groupValue: this.sex,
                      onChanged: this._setSex,
                    ),
                    Text('女'),
                    SizedBox(width: 50),
                    Text('选中： ${this.sex == 1 ? '男' : '女'}'),
                  ],
                ),
                RadioListTile(
                  value: 1,
                  groupValue: this.sex,
                  onChanged: this._setSex,
                  title: Text('一级标题'),
                  subtitle: Text('二级标题'),
                  secondary: Icon(Icons.settings),
                  selected: this.sex == 1,
                ),
                RadioListTile(
                  value: 2,
                  groupValue: this.sex,
                  onChanged: this._setSex,
                  title: Text('一级标题'),
                  subtitle: Text('二级标题'),
                  selected: this.sex == 2,
                  secondary: Image.network(
                      'http://img5.mtime.cn/mt/2021/04/13/154328.31480704_1280X720X2.jpg'),
                ),
                Switch(
                    value: this.flag,
                    onChanged: (v) {
                      setState(() {
                        this.flag = v;
                      });
                    }),
                Row(
                  children: _getHobby(),
                )
              ],
            ),
          ),
        ));
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
