class  Person {
  String name;
  int age;
  Person(this.name, this.age);
  void printV() {
    print('${this.name}----${this.age}');
  }
}
/**
 *  ? 条件运算符（判空，好像不生效）
 *  is  类型判断
 *  as  类型转换
 *  .. 级联操作
 */
main() {
  // Person p;
  // p?.printV(); //  仍然报错。。。
  Person p = new Person('skye', 18);
  if (p is Person) {
    print('${p.name}');
  }
  print(p is Object);

  var p1;
  p1 = '';
  p1 = new Person('as', 111);
  p1.printV();
  (p1 as Person).printV();


  Person p2 = new Person('skye', 18);
  p2.printV();
  p2..name = "test"
    ..age = 20
    ..printV();
}