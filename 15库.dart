import 'dart:math';
main() {
  print(min(12,1));
  int? a = 123;
  a = null;

  void printV(int v,[int? a]) {
    print('$v-----$a');
  }
  printV(1, 2);
  void printV1(int v,{ required int? a}) {
    print('$v-----$a');
  }
  printV1(1, a:2333);
}