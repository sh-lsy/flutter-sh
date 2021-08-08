main() {

  /**
   *  maps  读取属性只能['name']  不能.name
   */ 

  // 第一种定义
  var Person = {
    "name": "木东子",
    "age": 27
  };
  print(Person);
  print(Person['name']);
  //  new
  var p = new Map();
  p['name'] = "lisi";
  print(p);


  //  is  判断数据类型
  var str = '12121';
  if (str is int) {
    print('整型');
  } else if (str is String) {
    print('string');
  } else {
    print(str);
  }
}