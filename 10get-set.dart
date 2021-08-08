class  Rect {
  num height;
  num width;
  Rect(this.height,this.width);
  get area{ return this.height * this.width; }
  set rH(v) {
    this.height = v;
  }
}
main() {
  Rect r = new Rect(10, 3);
  print(r.area); // 调用get 不用加()
  r.rH = 20; // 调用set  直接=
  print(r.area);
}