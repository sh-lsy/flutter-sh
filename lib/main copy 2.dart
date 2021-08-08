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
        body: Center(
          child: Container(
            child: Text(
              'demo',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.w900),
            ),
            width: 400.0,
            height: 400.0,
            transform: Matrix4.translationValues(0, -100.0, 0),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              border: Border.all(
                color: Colors.redAccent,
                width: 2.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(200.0),
              ),
            ),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.deepOrange),
    );
  }
}
