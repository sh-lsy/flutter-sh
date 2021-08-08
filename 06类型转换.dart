main() {
  /**
   *  number string
   */ 
  String str = '123';
  var strNum = int.parse(str);
  print(strNum is int);

  int num = 123;
  var numStr = num.toString();
  print(numStr is String);
  /**
   * 其他类型转Boole
   *  isEmpty
   */
  var str1 = 'aaa';
  print('str1.isEmpty: ${str1.isEmpty}');
}