/**
 * 类
 */

class Person {
  String name = "skye";
  int age = 18;
  void getInfo() {
    print('${this.name}: ${this.age}');
  }
  void setAge(int age) {
    this.age = age;
  }
}
  class GetArea{
    int width;
    int height;
    int area;
    String name;
    // GetArea(this.width,this.height) {
    //   this.area = width * height;
    // }
    GetArea(this.width,this.height): area = height * width,name ="初始化列表";
    // 重写toString方法 进行打印
    @override
    String toString() {
      return "width:$width height:$height area:$area name:$name";
    }
  }
  class Demo{
    final String name;
    const Demo(this.name);
  }
main() {
  // 实例化  方式1
  var p1 = new Person();
  print(p1.name);
  p1.getInfo();
  // 实例化  方式2
  Person p2 = new Person();
  print(p2.name);
  p2.getInfo();
  p2.setAge(22);
  p2.getInfo();
  var area = GetArea(666,5);
  print(area);

  const d1 = Demo('demo');
  const d2 = Demo('demo');
  print(identical(d1, d2));
}