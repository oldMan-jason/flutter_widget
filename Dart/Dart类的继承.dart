

class Father{

  String name;
  int age;

  Father(this.age,this.name);
  
  void printSuperInfo(){
    print('${this.age} --- ${this.name}');
  } 

  void makeMoney(){
    print('${this.name} -- 开始挣钱');
  }

  void startLenring(){
    print('${this.name} ---开始学习');
  }


}

class Son extends Father {

  String sex;

  //构造函数是无法继承
  // Son(int age, String name) : super(age, name);
  Son(int age,String name,String sex):super(age,name){
    this.sex = sex;
  }

  //子类的方法可以通过super调用父类的方法
  void startSport(){
    super.makeMoney();
  }

  //重写父类的方法
  @override
  void startLenring() {
    super.startLenring();
    print("${this.name} -- 学习");
  }

  @override
  void makeMoney() {
    print('${this.name} -- 挣钱');
  
  }





}

main(List<String> args) {
  
  Son s = new Son(12, 'jason', '男');
  s.startLenring();
  

}