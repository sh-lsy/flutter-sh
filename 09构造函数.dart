/**
 * 默认构造函数
 */
// class Person {
//   String name = "skye";
//   int age = 18;
//   // 默认构造函数
//   // Person(String name, int age) {
//   //   this.name = name;
//   //   this.age = age;
//   //   print('构造函数内容，实例化时触发');
//   // }
//   // 简写
//   Person(this.name, this.age);
//   void getInfo() {
//     print('${this.name}: ${this.age}');
//   }
//   void setAge(int age) {
//     this.age = age;
//   }
// }
/**
 * 命名构造函数 dart 可以有多个构造函数
 */
// class Person {
//   String name = "skye";
//   int age = 18;
//   Person(this.name, this.age);
//   // 命名构造函数
//   Person.now() {
//     print('命名构造函数');
//     this.name;
//   }
//   void getInfo() {
//     print('${this.name}: ${this.age}');
//   }
//   void setAge(int age) {
//     this.age = age;
//   }
// }

// 引入外不文件  不需要./
import 'lib/Person.dart';
import 'lib/Animal.dart';

main() {
  Person p = new Person('hahha', 99999999);
  p.getInfo();
  var p1 = new Person.now();
  print(p.age);
  var time = new DateTime.now();
  print(time);

  Animal a = new Animal('aqiang', 'dog');
  a.printV();
  print(a._name); // 不可访问  _表示私有
  print(a.type);

}