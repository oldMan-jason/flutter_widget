
//计算矩形的面积

class RectClass{

  num height;
  num width;
  RectClass(this.height,this.width);

  area(){
    num area = this.height * this.width;
    return  area;
  }

  //get防范
  get newArea{
     return this.width * this.height;
  }
  


}