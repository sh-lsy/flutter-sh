import 'package:flutter/material.dart';
import '../pages/Tabs3/Home.dart';
import '../pages/Tabs3/Search.dart';
import '../pages/Tabs3/Product.dart';
import '../pages/Tabs3/AppBarDemo.dart';
import '../pages/Tabs3/AppBarDemo1.dart';
import '../pages/Tabs3/Mybutton.dart';
import '../pages/Tabs3/MyForm.dart';
import '../pages/Tabs3/MyForm1.dart';
import '../pages/Tabs3/DatePicker.dart';
import '../pages/Tabs3/MySwiper.dart';
import '../pages/Tabs3/Dialog.dart';
import '../pages/Tabs3/GetPost.dart';
import '../pages/Tabs3/HttpData.dart';
import '../pages/Tabs3/Demo.dart';
import '../pages/Tabs3/jiaoyan.dart';
import '../pages/tabs3.dart';

final Map<String, Function> routes = {
  '/': (context) => Tabs(),
  '/home': (context) => HomePage(),
  '/appBarDemo': (context) => AppBarDemo(),
  '/appBarDemo1': (context) => AppBarDemo1(),
  '/Mybutton': (context) => Mybutton(),
  '/MyForm': (context) => MyForm(),
  '/MyForm1': (context) => MyForm1(),
  '/datePicker': (context) => DatePicker1(),
  '/MySwiper': (context) => MySwiper(),
  '/myDialog': (context) => MyDialog(),
  '/getPost': (context) => GetPost(),
  '/httpData': (context) => HttpData(),
  '/demo': (context) => Demo(),
  '/jiaoyan': (context) => JiaoYan(),
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
