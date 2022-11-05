

class Animals{
  // dart 私有属性 在前面加 _ 
  String _animalsName;
  String animalsSex;
  int age;
  String animalsColors;


  Animals(this.animalsColors,this.animalsSex,this.age);

  //私有属性通过提供公共的方法来获取
String getAnimalsName(){
  return this._animalsName;
}

set setMyAnimaslName(String name){
  this._animalsName = name;
}

get getMyAnimalsName{
  return this._animalsName;
}


  void printAnimalsInfo(){

    print("${this._animalsName} -- ${this.age} -- ${this.animalsColors} ----- ${this.animalsSex}");

  }


}