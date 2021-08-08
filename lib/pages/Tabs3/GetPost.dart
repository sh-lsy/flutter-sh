import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class GetPost extends StatefulWidget {
  GetPost({Key? key}) : super(key: key);

  @override
  _GetPostState createState() => _GetPostState();
}

class _GetPostState extends State<GetPost> {
  var msg = '初始数据';
  @override
  void initState() {
    super.initState();
    var data = {"name": "skye", "age": 18};
    var jsonData = json.encode(data);
    print(jsonData);
  }

  _getData() async {
    var url = Uri.parse('https://jd.itying.com/api/httpGet');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    setState(() {
      this.msg = json.decode(response.body)['msg'];
    });
    // print(await http.read(response));
  }

  _postData() async {
    var url = Uri.parse('https://jd.itying.com/api/httpPost');
    var response = await http.post(url, body: {"name": "skye", "age": "18"});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    setState(() {
      this.msg = json.decode(response.body)['msg'];
    });
  }

  _getDioData() async {
    try {
      var response = await Dio().get('https://jd.itying.com/api/httpGet');
      print(response.data['msg']);
      setState(() {
        this.msg = response.data['msg'];
      });
    } catch (e) {
      print(e);
    }
  }

  _postDioData() async {
    // var map = {"name": "skye", "age": "18"};
    // var data = json.encode(map);
    try {
      // var response = await Dio()
      //     .post('https://jd.itying.com/api/httpGet', queryParameters: map);
      // print(response);
      var dio = Dio();
      var response = await dio.post('https://jd.itying.com/api/httpGet',
          data: {'id': 12, 'name': 'wendu'});
      print(response);
      setState(() {
        // this.msg = response.data['msg'];
      });
    } catch (e) {
      print(e);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetPost练习'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(msg),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _getData,
              child: Text('http插件 get请求'),
            ),
            ElevatedButton(
              onPressed: _postData,
              child: Text('http插件 post请求'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/httpData',
                );
              },
              child: Text('渲染取到的数据'),
            ),
            ElevatedButton(
              onPressed: _getDioData,
              child: Text('dio插件 get请求'),
            ),
            ElevatedButton(
              onPressed: _postDioData,
              child: Text('dio插件 post请求'),
            ),
          ],
        ),
      ),
    );
  }
}
