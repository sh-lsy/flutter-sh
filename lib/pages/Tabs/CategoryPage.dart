import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'http://img5.mtime.cn/mt/2021/06/10/125840.78677984_1280X720X2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    'http://img5.mtime.cn/mt/2021/06/10/125840.78677984_1280X720X2.jpg',
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                  ),
                ),
                title: Text('xxx电影'),
                subtitle: Text(
                  '122121afsdafadfafadfafafafa',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'http://img5.mtime.cn/mt/2021/06/23/144247.59352538_1280X720X2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: Container(
                  height: 100,
                  width: 60,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'http://img5.mtime.cn/mt/2021/06/23/144247.59352538_1280X720X2.jpg',
                    ),
                    radius: 100,
                  ),
                ),
                title: Text('xxx电影'),
                subtitle: Text(
                  '122121afsdafadfafadfafafafa122121afsdafadfafadfafafafa122121afsdafadfafadfafafafa122121afsdafadfafadfafafafa',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
