# demo

**flutter packages get**  拉取依赖

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# 部分组件记录

### hello world 初体验

~~~dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(
            'Hello World test ceshi 测试测试测试测试测21313试测试测12试测试测试测试测11212试测试测试测试测试测试',
            textAlign: TextAlign.center, // (center, left, right, start, end)
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 25.0,
              color: Color.fromARGB(255, 255, 0, 0),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}

~~~

### Divider（线）

### SizedBox（可用于边距处理）

### Container

- 相当于前端中的div

#### *alignment*

- 设置位置

#### *decoration*

- 设置背景样式

相关代码

~~~dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Container(
            child: Text(
              'flutter test',
              style: TextStyle(
                fontSize: 30.0,
                color: Color.fromARGB(200, 200, 0, 0),
              ),
            ),
            alignment: Alignment.topLeft,
            width: 400.0,
            height: 300.0,
            // color: Colors.lightBlue,
            padding: const EdgeInsets.fromLTRB(20.0, 30.0, 0.0, 0.0),
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Colors.lightBlue,
                  Colors.orangeAccent,
                  Colors.pinkAccent
                ],
              ),
              border: Border.all(color: Colors.black87, width: 5.0),
            ),
          ),
        ),
      ),
    );
  }
}

~~~

### Image

#### fit

- BoxFit.contain

  尽量填充满，保持图片原有的比例大小

- BoxFit.fill

  进行拉伸，填充满，会破坏图片的比例

- BoxFit.fitWidth

  图片横向填充满，纵向超出会裁剪

- BoxFit.fitHeight

  图片纵向填充满，横向超出会裁剪，没超出可以有空隙

- BoxFit.cover,

  图片填充满，保持图片自身的比例，可能会被裁剪

- BoxFit.scaleDown

  在目标框内对齐源（默认情况下，居中），如有必要，缩小源以确保源适合框。

  如果会缩小图像，则与包含相同，否则与无相同。

#### *colorBlendMode*

颜色和图片混合

~~~dart
child: new Image.network(
              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202103%2F07%2F20210307182940_8acce.thumb.1000_0.png&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1627440019&t=5a65ac1aa683cf6bae8e862724ff4100',
              fit: BoxFit.contain,
              color: Colors.greenAccent,
              colorBlendMode: BlendMode.multiply, // 有多种模式
            ),
~~~

#### repeat  

ImageRepeat.repeat  (noRepeat, repeatX, repeatY)

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Container(
            child: new Image.asset(
              'assets/images/22.jpg',
              // fit: BoxFit.cover,
              color: Colors.green,
              colorBlendMode: BlendMode.multiply,
              repeat: ImageRepeat.repeatX,
            ),
            width: 300.0,
            height: 200.0,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}
```

### ListView

#### ListTile

```dart
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.ac_unit_sharp),
              title: Text('ac_unit_sharp'),
            ),
            ListTile(
              leading: Icon(Icons.access_alarms_rounded),
              title: Text('access_alarms_rounded'),
            ),
            ListTile(
              leading: Icon(Icons.accessible_forward),
              title: Text('accessible_forward'),
            ),
          ],
        ),
```

加入列表图片

```dart
        body: ListView(
          children: <Widget>[
            Image.network(
                'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF'),
            Image.network(
                'https://t7.baidu.com/it/u=1951548898,3927145&fm=193&f=GIF'),
            Image.network(
                'https://t7.baidu.com/it/u=1831997705,836992814&fm=193&f=GIF'),
            Image.asset('assets/images/11.jpg')
          ],
        ),
```

- 将ListView提出来（组件）

~~~dart
class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal, // 水平布局 (vertical 垂直)
      children: [
        Container(
          width: 180,
          color: Colors.lightBlue,
        ),
        Container(
          width: 180,
          color: Colors.redAccent,
        ),
        Container(
          width: 180,
          color: Colors.yellow,
        ),
        Container(
          width: 180,
          color: Colors.deepOrange,
        ),
      ],
    );
  }
}
~~~

#### 动态列表

~~~dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp(
      items: new List<String>.generate(50, (i) => "item $i"),
    ));

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      home: Scaffold(
        appBar: AppBar(title: Text('flutter demo test')),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}

~~~



### GridView

网格列表

```dart
		body: GridView.count(
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            const Text(
              'flutter1',
              textAlign: TextAlign.center,
            ),
            const Text(
              'flutter2',
              textAlign: TextAlign.center,
            ),
            const Text(
              'flutter3',
              textAlign: TextAlign.center,
            ),
            const Text(
              'flutter4',
              textAlign: TextAlign.center,
            ),
            const Text(
              'flutter5',
              textAlign: TextAlign.center,
            ),
            const Text(
              'flutter6',
              textAlign: TextAlign.center,
            ),
          ],
        ),
```

图片布局

~~~
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('flutter demo 23333'),
          ),
          body: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // 每行展示的数量
              mainAxisSpacing: 30, // 行之间相隔的间距
              crossAxisSpacing: 5, // 列之间相隔间距
              childAspectRatio: .75, // 宽高比
            ),
            children: [
              new Image.network(
                  'http://img5.mtime.cn/mt/2021/04/13/154328.31480704_1280X720X2.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2020/12/28/102117.12342858_1280X720X2.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2021/06/10/125840.78677984_1280X720X2.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2021/06/02/143546.58967996_1280X720X2.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2021/06/23/144247.59352538_1280X720X2.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2021/04/29/101639.70040839_1280X720X2.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2021/06/28/164630.47464388_1280X720X2.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2021/06/11/115301.79155425_1280X720X2.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2021/05/25/160258.77696628_1280X720X2.jpg',
                  fit: BoxFit.cover),
            ],
          )),
    );
  }
}

~~~

### RowWidget

```dart
import 'package:flutter/material.dart';

void main() => {runApp(MyApp())};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Widget',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('RowWidget Demo'),
        ),
        body: new Row(
          children: [
            Expanded(
              // 灵活布局 自动填充满一行 平均分配
              child: new ElevatedButton(
                onPressed: () {
                  print('我被点击了');
                },
                child: Text('test233'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black38),
                    foregroundColor: MaterialStateProperty.all(Colors.blue)),
              ),
            ),
            Expanded(
              child: new ElevatedButton(
                onPressed: () {
                  print('我被点击了');
                },
                child: Text('test111'),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightGreenAccent),
                    foregroundColor: MaterialStateProperty.all(Colors.blue)),
              ),
            ),
            Expanded(
              child: new ElevatedButton(
                onPressed: () {
                  print('我被点击了');
                },
                child: Text('test222'),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightBlueAccent),
                    foregroundColor: MaterialStateProperty.all(Colors.blue)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

### ColumnWidget

- crossAxisAlignment

  副轴 （垂直布局中副轴为水平方向）

- *mainAxisAlignment*

  主轴

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '垂直column 布局',
      home: Scaffold(
        appBar: new AppBar(title: Text('垂直column 布局')),
        body: Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center, // 文本 默认基于最长的宽度为该组件宽度
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('垂直column 布局'),
              Expanded(
                child: Text('垂直column21 布局 主体中间部分垂直column21 布局 主体中间部分'),
              ),
              Text('垂直column233333333 布局'),
            ],
          ),
        ),
      ),
    );
  }
}
```

	#### SingleChildScrollView

当Column中组件高度过高 触发overflow报错 将其放入**SingleChildScrollView**

### StackWidget

​	层叠布局

~~~dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.9),
      children: [
        new CircleAvatar(
          backgroundImage: AssetImage('assets/images/11.jpg'),
          radius: 100.0,
        ),
        new Container(
          decoration: new BoxDecoration(color: Colors.lightBlue),
          child: Text(
            '木东子',
            style: TextStyle(fontSize: 25.0),
          ),
        ),
      ],
    );
    return MaterialApp(
      title: '垂直column 布局',
      home: Scaffold(
        appBar: new AppBar(title: Text('黑心阿栋简介')),
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}
~~~

### Positioned

​	有点类似绝对定位

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      // alignment: const FractionalOffset(0.5, 0.9),
      children: [
        new CircleAvatar(
          backgroundImage: AssetImage('assets/images/11.jpg'),
          radius: 100.0,
        ),
        new Positioned(
          top: 10,
          left: 60,
          child: Text(
            '1111',
            style: TextStyle(
              fontSize: 25,
              color: Colors.lightBlue,
            ),
          ),
        ),
        new Positioned(
          bottom: 10,
          right: 80,
          child: Text(
            '23333',
            style: TextStyle(
              fontSize: 25,
              color: Colors.lightBlue,
            ),
          ),
        )
      ],
    );
    return MaterialApp(
      title: '垂直column 布局',
      home: Scaffold(
        appBar: new AppBar(title: Text('黑心阿栋简介')),
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}
```

### AspectRatio

- *aspectRatio*

  设置宽高比

```dart
// 平铺时可以用上
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
            width: 300,
            child: AspectRatio(
              aspectRatio: 2.0 / 1.0, //宽高比
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.deepOrange), // 定义主题
    );
  }
}
```



### Card

- margin
  - 设置外边距
- child
  - 子组件
- Shape
  - Card 阴影效果 默认为圆角的长方形边



```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text('四川成都益州大道111',
                style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text(
              '木东子：13511111111',
            ),
            leading: Icon(Icons.account_box, color: Colors.lightBlue),
          ),
          new Divider(
            height: 10.0,
            color: Colors.red,
          ), // 分割线
          ListTile(
            title: Text('四川成都益州大道233',
                style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text(
              '木东子：13511111111',
            ),
            leading: Icon(Icons.account_box, color: Colors.lightBlue),
          ),
          new Divider(),
          ListTile(
            title: Text('四川成都益州大道567',
                style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text(
              '木东子：13511111111',
            ),
            leading: Icon(Icons.account_box, color: Colors.lightBlue),
          ),
        ],
      ),
    );
    return MaterialApp(
      title: 'Card 布局',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card 布局'),
        ),
        body: card,
      ),
    );
  }
}
```



###  wrap

自适应布局 超出一行（一列）长度，自动换行

```dart
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
        body: Wrap(
          spacing: 15, // 主轴之间距离 默认横向子元素距离
          runSpacing: 5, //副轴之间距离 默认纵向行之间距离
          alignment: WrapAlignment.spaceAround, // 以第一行宽度为基准
          children: [
            MyBtn(
              text: 'testa',
            ),
            MyBtn(
              text: 'testa211',
            ),
            MyBtn(
              text: 'testa11',
            ),
            MyBtn(
              text: 'tes',
            ),
            MyBtn(
              text: 'testa233',
            ),
            MyBtn(
              text: 'testa11',
            ),
            MyBtn(
              text: 'testa666666',
            ),
            MyBtn(
              text: 'testa111',
            ),
          ],
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.deepOrange), // 定义主题
    );
  }
}

class MyBtn extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  MyBtn(
      {this.text = '按钮',
      this.color = Colors.red,
      this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(this.text),
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(this.color),
        foregroundColor: MaterialStateProperty.all(this.textColor),
      ),
    );
  }
}
```

### StatefulWidget

有状态组件

- setState

  通过该方法进行值改变，页面会状态也改变

```dart
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 50),
          Chip(
            label: Text(
              '${this.count}',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.blue,
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              // this.count++; // 不能更改
              setState(() {
                // 状态组件才有
                this.count++;
              });
              print(this.count);
            },
            child: Text('按钮'),
          ),
        ],
      ),
    );
  }
}
```



### button

- TextButton （新）
- OutlinedButton （新）
- ElevatedButton  （新）
- FloatingActionButton(悬浮按钮 可在Scaffold结合 ***floatingActionButton***使用)

1、点击事件 onPressed

2、长按事件 onLongPress 

3、属性：

​	textStyle 字体

​	backgroundColor 背景颜色 

​	foregroundColor 字体颜色

​	overlayColor 高亮色，按钮处于focused, hovered, or pressed时的颜色

​	side 边框

​	shadowColor 阴影颜色

​	elevation 阴影值

​	shape 形状-可设置圆角弧度

### BottomNavigationBar

**Scaffold** 里面的一个属性

 - *items*

   - 必须拥有 长度 >=2

   - 子元素为BottomNavigationBarItem 示例

     如：<font color=red>BottomNavigationBarItem(*icon*: Icon(Icons.home), *label*: '首页'),</font>

 - *type*

 - *currentIndex*

   - *selectedItemColor*

```dart
class Tabs extends StatefulWidget {
  Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demo'),
      ),
      body: Center(
        child: Text(
          '1111',
          style: TextStyle(
            fontSize: 30.0,
            // color: Color(0xFFFF80AB),
            color: Color.fromRGBO(255, 200, 0, .6),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // 当有3个以上的元素，则需要显式设置
        iconSize: 30,
        selectedItemColor: Colors.lightBlue, // 选中active颜色
        currentIndex: 2, // 设置默认选中
        // fixedColor: Colors.orange,
        onTap: (int i) {
          print(i);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: '分类'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '设置'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '我的'),
        ],
      ),
    );
  }
}
```



### 导航父子界面跳转

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '导航test',
    home: new FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航界面'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => new SecondScreen(),
                ));
          },
          child: Text('去详情界面'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('详情界面'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('返回'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
```

### 导航参数的传递和接受

```dart
import 'package:flutter/material.dart';

class Product {
  final String title; // 商品名
  final String description; // 商品描述
  Product(this.title, this.description);
}

void main() {
  runApp(MaterialApp(
    title: '导航的数据传递和接收',
    home: ProductList(
        products: List.generate(20, (i) => Product('商品 $i', '商品$i的详细信息'))),
  ));
}

class ProductList extends StatelessWidget {
  final List<Product> products;
  ProductList({Key? key, required this.products}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('商品列表')),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(products[index].title),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ProductDetail(product: products[index]),
                    ));
              },
            );
          },
        ));
  }
}
class ProductDetail extends StatelessWidget {
  final Product product;
  ProductDetail({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: Center(
        child: Text(product.description, style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
```

### 命名路由

 **路由封装**

```dart
import 'package:flutter/material.dart';
import '../pages/Tabs3/Home.dart';
import '../pages/Tabs3/Search.dart';
import '../pages/Tabs3/Product.dart';
import '../pages/tabs3.dart';

final routes = {
  '/': (context) => Tabs(),
  '/home': (context) => HomePage(),
  '/search': (context, {arguments}) => Search(arguments: arguments),
  '/prodcut': (context, {arguments}) => Product(arguments: arguments)
};

final RouteFactory onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  print(settings);
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};

```

HomePage.dart

```dart
import 'package:flutter/material.dart';
// import 'Search.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/Home";
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/search', arguments: {
                'title': '命名参数111',
                'id': 12,
                'detail': '详情2333'
              });
            },
            child: Text('去搜索界面'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/prodcut',
                  arguments: {'title': '产品111', 'id': 12, 'detail': '产品2333'});
            },
            child: Text('去搜索界面带参数'),
          ),
        ],
      ),
    );
  }
}

```





**Search.dart**(StatelessWidget)

```dart
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  // final String title;
  // const Search({Key? key, this.title = '搜索界面'}) : super(key: key);
  final arguments;
  // args表示可能传入的参数列表
  Search({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments != null ? arguments['title'] : 'test'),
      ),
      body: Center(
        child: Text(arguments != null ? arguments['detail'] : 'test'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('返回'),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text('返回'),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      // ),
    );
  }
}
```



**Product.dart** (StatefulWidget)

```dart
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

```



### 处理为圆形图片

- ClipOval
  - 需要自己设置宽度
- CircleAvatar
  - 改变大小需要父级Container 宽度
  - 也可以设置**radius**半径

模仿电影卡片布局 处理圆形

```dart
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
          body: ListView(
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
          )),
      theme: ThemeData(primarySwatch: Colors.deepOrange), // 定义主题
    );
  }
}
```

### AppBar（TabBar）

- leading
  - 在标题前面显示的一个控件，在首页通常显示应用的 logo；在其他界面通常显示为返回按钮（自定义按钮用**IconButton**) 
- actions

通过TabBar  设置头部导航， 当与上一级AppBar冲突可以在title中应用TabBar



```dart
import 'package:flutter/material.dart';

class AppBarDemo3 extends StatelessWidget {
  const AppBarDemo3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: AppBar(
            title: TabBar(
              isScrollable: true, // 当有多个按钮时，进行滑动
              tabs: [
                Tab(text: '热门'),
                Tab(text: '推荐1'),
                Tab(text: '推荐2'),
                Tab(text: '推荐3'),
                Tab(text: '推荐4'),
                Tab(text: '推荐5'),
              ],
            ),
            backgroundColor: Colors.lightBlueAccent,
            centerTitle: true,
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print('search');
                },
              ),
            ],
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text('热门'),
              ),
              Center(
                child: Text('推荐1'),
              ),
              Center(
                child: Text('推荐2'),
              ),
              Center(
                child: Text('推荐3'),
              ),
              Center(
                child: Text('推荐4'),
              ),
              Center(
                child: Text('推荐5'),
              ),
            ],
          )),
    );
  }
}d
```



### TabController

通过该TabController 在StatefulWidget 完成头部导航，并可以监听方法

- SingleTickerProviderStateMixin

- 需要继承该类

- initState

  在初始生命周期函数进行申明 和对_tabController监听



```dart
import 'package:flutter/material.dart';

class TabControllerPage extends StatefulWidget {
  TabControllerPage({Key? key}) : super(key: key);

  @override
  _TabControllerPageState createState() => _TabControllerPageState();
}

class _TabControllerPageState extends State<TabControllerPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void dispose() {
    // 组件销毁生命周期函数
    super.dispose();
    _tabController.dispose();
  }

  void initState() {
    // 生命周期函数
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          controller: this._tabController, // 必须带上
          tabs: [
            Tab(text: '热门'),
            Tab(text: '推荐'),
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController, // 必须带上
        children: [
          Center(
            child: Text('热门'),
          ),
          Center(
            child: Text('推荐'),
          ),
        ],
      ),
    );
  }
}
```

### Drawer

- *drawer*
  - 左边侧栏
- *endDrawer*
  - 右边侧栏

**Drawer** 

	- DrawerHeader

 - UserAccountsDrawerHeader
   - *currentAccountPicture*(头像)
     - *accountName*
      - *accountEmail*
        	- *decoration*

侧边栏路由跳转隐藏侧边栏

 **Navigator.of(*context*).pop(); *// 隐藏侧边栏 避免返回时侧边栏还在***

```dart
      drawer: Drawer(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: DrawerHeader(
                      child: Text('DrawerHeader'),
                      decoration: BoxDecoration(color: Colors.lightBlue),
                    ),
                  )
                ],
              ),
              // SizedBox(
              //   height: 100,
              // ),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.home)),
                title: Text('首页'),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.settings)),
                title: Text('设置中心'),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.person)),
                title: Text('个人中心'),
                onTap: () {
                  Navigator.of(context).pop(); // 隐藏侧边栏 避免返回时侧边栏还在
                  Navigator.pushNamed(context, '/search', arguments: {
                    'title': '侧边栏用户中心跳转',
                    'id': 12,
                    'detail': '侧边栏用户中心跳转23333333333333'
                  });
                },
              ),
              Divider(),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(
        child: Center(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/11.jpg'),
                ),
                accountName: Text('用户：阿栋'),
                accountEmail: Text('邮箱：aaa@.com'),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'http://img5.mtime.cn/mt/2021/06/11/115301.79155425_1280X720X2.jpg'),
                      fit: BoxFit.fill),
                ),
              ),
              Text('endDrawer'),
            ],
          ),
        ),
      ),
```



### 表单组件

#### TextField

- *decoration*（进行输入框修饰）

  - *border*
    - OutlineInputBorder（）  类似html 输入框
  - *labelText*
  - *hintText*

- *maxLines*（设置展示最大行数）

- *maxLength*（设置最大字数）

- *obscureText*(ture时为密码框)

- *controller*  (绑定值)

  - TextEditingController

  - ```dart
    import 'package:flutter/material.dart';
    
    class MyForm1 extends StatefulWidget {
      MyForm1({Key? key}) : super(key: key);
    
      @override
      _MyForm1State createState() => _MyForm1State();
    }
    
    class _MyForm1State extends State<MyForm1> {
      var userName = new TextEditingController(); // 通过该定义绑定参数 可以双向绑定
      var pwd = new TextEditingController();// 通过该定义绑定参数 可以双向绑定
      @override
      void initState() {
        super.initState();
        userName.text = '阿栋';
        pwd.text = '';
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
                    )
                  ],
                ),
              ),
            ));
      }
    }
    ```

####  Checkbox

- *value* (bool)
- *onChanged* 
- *activeColor*

####  CheckboxListTile

- *value*
- *title*
- *subtitle*
- *secondary*（添加icon 或图标）
- *onChanged*

#### Radio

- *value*
- *groupValue*(绑定一样的值 代表一组)
- *onChanged*

#### RadioListTile

- *selected*

###  Flutter 日期

日期转化成时间戳：

```dart
var now = new DateTime.now(); 
print(now.millisecondsSinceEpoch);
```

时间戳转化成日期：

```dart
var now = new DateTime.now();
var a=now.millisecondsSinceEpoch; //时间戳
print(DateTime.fromMillisecondsSinceEpoch(a));
```

#### showDatePicker

```dart
  _showDatePicker() async {
    // showDatePicker(
    //   context: context,
    //   initialDate: now,
    //   firstDate: DateTime(1970),
    //   lastDate: DateTime(2100),
    // ).then(
    //   (value) {
    //     print(value);
    //   },
    // );
    var result = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(1970),
      lastDate: DateTime(2100),
      locale: Locale('zh'), // 非必须
    );
    print(result);
    setState(() {
      if (result == null) return;
      this.date = result;
    });
  }
```

#### showTimePicker

```
  _showTimePicker() async {
    var result = await showTimePicker(
      context: context,
      initialTime: this.time,
    );
    setState(() {
      if (result == null) return;
      this.time = result;
    });
  }
```

####  将其汉化

- 第一步

  - 在pubspec.yaml 文件 引入flutter_localizations: sdk: flutter

  - ```
    flutter_localizations:
      sdk: flutter
    ```

    

- 第二步

  - main.dart 导入import 'package:flutter_localizations/flutter_localizations.dart';

- 第三步

  main.dart   MaterialApp中配置

  ```dart
        localizationsDelegates: [
          //此处
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          //此处
          const Locale('zh', 'CH'),
          const Locale('en', 'US'),
        ],
  ```



### Dialog

#### AlertDialog

```dart
  _alertDialog() async {
    var result = await showDialog(
      context: context,
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
```



#### SimpleDialog

````dart
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
````



#### showModalBottomSheet

```dart
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
```



#### toast-flutteroast第三方库

 部分熟悉不生效

```dart
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
```



### 自定义Dialog（定时器）

​	布局自定义

创建一个自定义组件 dart文件

```dart
import 'dart:async';

import 'package:flutter/material.dart';

class ZiDialog extends Dialog {
    // 定时器
  _showTimer(context) {
    var timer;
    timer = Timer.periodic(Duration(milliseconds: 3000), (timer) {
      Navigator.pop(context);
      timer.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.lightBlue,
              ),
            )
          ],
        ),
      ),
    );
  }
}

```

在对应界面使用

​	首先导入

```dart
ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return ZiDialog();
                      });
                },
                child: Text('自定义Dialog'),
              ),
```

### Flutter JSON和Map转换

需要引入 **import 'dart:convert';**

- json.encode
  - map类型转json字符串
- json.decode
  - json类型转map类型

###  表单校验

​	利用Form组件

需要给form定义一个key

​		**GlobalKey<FormState> formGlobalKey = GlobalKey<FormState>();**

使用 **TextFormField**

- *autovalidateMode*: AutovalidateMode.onUserInteraction  (设置光标选中自动校验)
- *validator*  （设置校验规则）
- *onSaved* （最后赋值 用于表单提交时拿到数据）

```dart
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
```



### 拉项目注意

配置自己的本地安卓路径

**flutter packages get**  拉取依赖

l

###  扩展

#### AnimatedContainer (动画渐变效果)

```dart
import 'dart:math';

import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  // Define the various properties with default values. Update these properties
  // when the user taps a FloatingActionButton.
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AnimatedContainer Demo'),
        ),
        body: Center(
          child: AnimatedContainer(
            // Use the properties stored in the State class.
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
            // Define how long the animation should take.
            duration: Duration(seconds: 1),
            // Provide an optional curve to make the animation feel smoother.
            curve: Curves.fastOutSlowIn,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          // When the user taps the button
          onPressed: () {
            // Use setState to rebuild the widget with new values.
            setState(() {
              // Create a random number generator.
              final random = Random();

              // Generate a random width and height.
              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();
              // Generate a random color.
              _color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1,
              );

              // Generate a random border radius.
              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
          child: Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}
```

#### AnimatedOpacity（淡入淡出效果）

```dart
// 定义 一个_visible 判断是否显示或隐藏
bool _visible = true;
// AnimatedOpacity 组件基本结构
AnimatedOpacity(
  // If the widget is visible, animate to 0.0 (invisible).
  // If the widget is hidden, animate to 1.0 (fully visible).
  opacity: _visible ? 1.0 : 0.0,
  duration: Duration(milliseconds: 500),
  // The green box must be a child of the AnimatedOpacity widget.
  child: Container(
     width: 300.0,
     height: 300.0,
     color: Colors.green,
	),
),
// 通过setState 将其淡入淡出
setState(() {
   _visible = !_visible;
});
```

#### SnackBar

demo中需要单独封装一下

```dart
class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('1111111  SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text('Show SnackBar'),
      ),
    );
  }
}
```



