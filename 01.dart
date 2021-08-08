/// 有类型校验

void main() {
  // string
  String str = 'test';
  // number
  int num = 123;
  // num = '2121';
  print(str);
  print(num);
  //  可以通过var 定义  会自动类型推断
  // const final 定义常量
  const PI = 3.14159;
  // PI = 3.14; // 不能修改
  print(PI);
  final p = 3.14;
  final time = new DateTime.now(); // 需要new 只能用final
  // p = 3;// 不能修改
  print(p);
  print(time);
}

/**
 *  dart命名规则
 *  1、变量名称必须由数字、字母、下划线和美元符($)组成。
 *  2.注意:标识符开头不能是数字
 *  3.标识符不能是保留字和关键字。
 *  4.变量的名字是区分大小写的如: age和Age是不同的变量。在实际的运用中,也建议,不要同个单词大小写混合使用
 *  5、标识符(变量名称)一定要见名思意:变量名称建议用名词，方法名称建议用动词
 */ 