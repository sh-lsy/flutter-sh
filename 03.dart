main() {
  // List集合类型
  
  // 第一种定义
  var list1 = ["张三", 20, true];
  print(list1.length);
  print(list1[2]);
  print(list1);
  // 指定类型
  var list2 = <String>["张三",'lisi'];
  print(list2);
  // 添加数据
  var list3 = [];
  print(list3);
  print(list3.length);
  list3.add(123);
  print(list3);
  print(list3.length);list3.add('haha');
  

  // 创建固定长度, 不能修改

  var list4 = List.filled(6, '1'); // 第一个参数为创建长度，第二个为填充内容
  var list5 = List<String>.filled(6, '1'); // 第一个参数为创建长度，第二个为填充内容
  print(list4);
  // list5[0] = 1; // 指定了类型
  list5[0] = 'hah'; // 指定了类型
  print(list5);
}