import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpData extends StatefulWidget {
  HttpData({Key? key}) : super(key: key);

  @override
  _HttpDataState createState() => _HttpDataState();
}

class _HttpDataState extends State<HttpData> {
  var result = [];
  @override
  void initState() {
    super.initState();
    this._getData();
  }

  _getData() async {
    var url = Uri.parse('https://jd.itying.com/api/pcate');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    setState(() {
      this.result = json.decode(response.body)['result'];
    });
    // print(await http.read(response));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpData练习'),
      ),
      body: this.result.length > 0
          ? ListView.builder(
              itemCount: this.result.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(result[index]['title']),
                );
              },
            )
          : Text('暂无数据'),
    );
  }
}
