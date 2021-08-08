
// 泛型方法
T getDate<T>(T value) {
  return value;
}

main() {
  print(getDate<String>('12'));

  // 泛型类
  List list = new List<String>.filled(3, "");
  list[0] = '212';
  // list[1] = 212; // 报错
  print(list);
}