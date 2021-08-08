import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  final arguments;
  Product({Key? key, this.arguments}) : super(key: key);

  @override
  _ProductState createState() => _ProductState(arguments: this.arguments);
}

class _ProductState extends State<Product> {
  final arguments;
  _ProductState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('11'),
      ),
      body: Column(
        children: [
          Text('${arguments['title']}'),
          Text(widget.arguments.toString()),
          Text(widget.arguments['detail'])
        ],
      ),
    );
  }
}
