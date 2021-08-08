// 字符串类型

main() {
  // 三引号多行输出 双引号也阔以
  String str = '''多行展示
多行展示
多行展示
  ''';
  String str1 = """多行展示
多行展示
多行展示
  """;
  print(str);
  print(str1);

// 字符串拼接

  String str2 = "hello";
  String str3 = "dart";
  print(str2 + str3);
  print("$str2 $str3");

/**
 *  数值类型
 *  整型 int
 *  浮点类型 double
 */

/**
 *  bool 类型
 *    true
 *    false
 */
  bool flag = true;
  print(flag);
}