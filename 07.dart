main() {
  List list = ['a', 'b', 'c'];
  list.forEach((val){
    print(val);
  });
  list.forEach((val) =>print(val + '=>')); //  注意  只能有一句代码



  // 自执行代码
  ((n){
    print('自执行代码----$n');
  })(111);

  // 递归
  getNum(int n) {
    if(n==1){
      return 1;
    } else {
      return n*(getNum(n-1));
    }
  }
  print(getNum(5));

  // 闭包
  fn() {
    var a = 123;
    return () {
      a++;
      print(a);
    };
  }
  var fn1 = fn();
  fn1();// 124
  fn1();// 125
  fn1();// 126
}