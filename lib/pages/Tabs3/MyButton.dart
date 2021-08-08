import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  const Mybutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮组件'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text("棱形按钮"),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Colors.lightBlueAccent), //背景颜色
              foregroundColor:
                  MaterialStateProperty.all(Color(0xffB85F23)), //字体颜色
              overlayColor: MaterialStateProperty.all(Color(0xffFFF8E5)), // 高亮色
              shadowColor: MaterialStateProperty.all(Color(0xffffffff)), //阴影颜色
              elevation: MaterialStateProperty.all(0), //阴影值
              textStyle:
                  MaterialStateProperty.all(TextStyle(fontSize: 12)), //字体
              side: MaterialStateProperty.all(
                  BorderSide(width: 1, color: Colors.red)), //边框
              shape: MaterialStateProperty.all(BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(10))), //圆角弧度
            ),
            onPressed: () {},
          ),
          ElevatedButton(
            child: Text("圆形按钮"),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Colors.lightBlueAccent), //背景颜色
              foregroundColor:
                  MaterialStateProperty.all(Color(0xffB85F23)), //字体颜色
              overlayColor: MaterialStateProperty.all(Colors.deepOrange), // 高亮色
              shadowColor: MaterialStateProperty.all(Color(0xffffffff)), //阴影颜色
              elevation: MaterialStateProperty.all(0),
              // splashFactory: InteractiveInkFeatureFactory(color:), //阴影值
              textStyle:
                  MaterialStateProperty.all(TextStyle(fontSize: 12)), //字体
              side: MaterialStateProperty.all(
                  BorderSide(width: 1, color: Colors.red)), //边框
              shape: MaterialStateProperty.all(
                CircleBorder(
                  side: BorderSide(
                    color: Colors.green,
                    width: 400,
                    style: BorderStyle.none,
                  ),
                ),
              ), //圆角弧度
            ),
            onPressed: () {},
          ),
          ElevatedButton(
            child: Text("圆角按钮"),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(StadiumBorder(
                  side: BorderSide(
                //设置 界面效果
                style: BorderStyle.solid,
                color: Colors.lightBlue,
              ))), //圆角弧度
            ),
            onPressed: () {},
          ),
          OutlinedButton(
            child: Text("OutlinedButton"),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.lightBlue)),
            onPressed: () {},
          ),
          TextButton(onPressed: () {}, child: Text("TextButton")),
          FloatingActionButton(
            onPressed: () {},
            child: Text("FloatingActionButton"),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.black54,
          size: 40,
        ),
        shape: CircleBorder(),
        onPressed: () {
          print("FloatingActionButton");
        },
        backgroundColor: Colors.lightBlueAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
