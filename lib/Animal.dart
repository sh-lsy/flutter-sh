class  Animal {
  String _name; 、、】_表示私有
  String type;
  Animal(this._name, this.type);
  void printV() {
    print("${this._name} ----- ${this.type}");
  }
}

main() {
  Animal a = new Animal('aqiang', 'dog');
  a.printV();
  print(a._name);
  print(a.type);
}