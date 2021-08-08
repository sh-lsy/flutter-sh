class  Person {
  String name;
  int age;
  Person(this.name, this.age);
  void printV() {
    print('${this.name}----${this.age}');
  }
}
class  Web extends Person {
  late String sex;
  Web(this.sex, int age, String name) : super(name, age);
  void run () {
    print('${this.name}----${this.age}----${this.sex}');
  }
  @override
  void printV () {
    print('${this.name}----${this.age}----${this.sex}');
  }
}
main() {
  Web w = new Web('skye', 18, 'nan121');
  w.printV();
  w.run();
}