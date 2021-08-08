/**
 * 定义一个类, 所有子类包含eat方法
 * 抽象类 不能实例化
 */
abstract class Animal{ // 抽象类 不能实例化
  eat(); // 抽象方法
}

class Dog extends Animal{
  @override
  eat() {
    print("11111111");
  }

}
class AA implements Animal{ // 接口
  @override
  eat() {
    print("aaaa");
  }
}

/**
 * mixins
 */
class A {
  String info="aaaaaaaaaa";
  void printA(){
    print("a 类");
  }
}
class B {
  String info="bbbbbbbb";
  void printB(){
    print("b类");
  }
}
class C with B,A { // 相同的属性和方法会被后面类覆盖, 类中不能有构造函数

}
main() {
  Dog a = new Dog();
  a.eat();
  AA aa = new AA();
  aa.eat();

  C c = new C();
  c.printA();
  c.printB();
  print(c.info);
}