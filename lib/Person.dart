class Person {
  String name = "skye";
  int age = 18;
  Person(this.name, this.age);
  // 命名构造函数
  Person.now() {
    print('外部引入文件-----命名构造函数');
    this.name;
  }
  void getInfo() {
    print('${this.name}: ${this.age}');
  }
  void setAge(int age) {
    this.age = age;
  }
}