
class CarClass {

  String carName;
  String carColor;

  //默认构造函数
  // CarClass(){

  // }

  //默认构造函数默认值
  // CarClass(String name,String color){
  //   this.carName = name;
  //   this.carName = color;
  // }

//默认构造函数的简写
  CarClass(this.carName,this.carColor);

//命名构造函数
CarClass.now(){

}
//命名构造函数带参数
CarClass.setInfo(String name,String color){
  this.carName = name;
  this.carColor = color;
}

  void setCarInfoWithColor(String color){
    this.carName = color;
  }
  void printcarInfo(){

    print('${this.carColor}---${this.carName}');

  }

}