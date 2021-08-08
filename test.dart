main() {
  List list = ["张三", 20, true];
  var data = list.map((i){
    return i;
  });
  print(data.toList());
  var r1 = Round(10);
  var r2 = Round(20);
  logArea(r1);
  logArea(r2);

  var c1 = Rectangle(10,10);
  var c2 = Rectangle(10,30);
  logArea(c1);
  logArea(c2);
}


abstract class Shap{
  // 定义抽象方法  继承该抽象类 必须实现该方法
  getArea();
}

class Round extends Shap {
  int r;
  Round(this.r);
  double getArea(){
    return r * r * 3.14;
  }
}
class Rectangle extends Shap {
  int width;
  int height;
  Rectangle(this.width, this.height);
  getArea() {
    return width * height;
  }
}

logArea(Shap s) {
  print(s.getArea());
}