import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../components/zidingyiDialog.dart';

class MyDialog extends StatefulWidget {
  MyDialog({Key? key}) : super(key: key);

  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  _alertDialog() async {
    var result = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text('提示信息'),
          content: Text('您确定要删除吗?'),
          actions: [
            ElevatedButton(
              child: Text('取消'),
              onPressed: () {
                print('取消');
                Navigator.pop(context, 'cancel');
              },
            ),
            ElevatedButton(
              child: Text('确定'),
              onPressed: () {
                print('确定');
                Navigator.pop(context, 'ok');
              },
            )
          ],
        );
      },
    );
    print(result);
  }

  _simpleDialog() async {
    var result = await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text('选择内容'),
          children: [
            SimpleDialogOption(
              child: Text('选项1'),
              onPressed: () {
                print('选项1');
                Navigator.pop(context, '111');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text('选项2'),
              onPressed: () {
                print('选项2');
                Navigator.pop(context, '222');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text('选项3'),
              onPressed: () {
                print('选项3');
                Navigator.pop(context, '333');
              },
            ),
          ],
        );
      },
    );
    print(result);
  }

  _modelBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            child: Column(
              children: [
                ListTile(
                  title: Text('分享1'),
                  onTap: () {
                    print('分享1');
                    Navigator.pop(context, '111');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享2'),
                  onTap: () {
                    print('分享2');
                    Navigator.pop(context, '222');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享3'),
                  onTap: () {
                    print('分享2');
                    Navigator.pop(context, '333');
                  },
                ),
              ],
            ),
          );
        });
    print(result);
  }

  _toast() {
    Fluttertoast.showToast(
      msg: "提示",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dialog'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _alertDialog,
                child: Text('AlertDialog'),
              ),
              ElevatedButton(
                onPressed: _simpleDialog,
                child: Text('SimpleDialog'),
              ),
              ElevatedButton(
                onPressed: _modelBottomSheet,
                child: Text('showModalBottomSheet'),
              ),
              ElevatedButton(
                onPressed: _toast,
                child: Text('toast-flutteroast第三方库'),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return ZiDialog();
                      });
                },
                child: Text('自定义Dialog'),
              ),
            ],
          ),
        ));
  }
}
