
main(List<String> args) {
  
  String price = "98.00";
  double p = double.parse(price);
  print(p);

  String price2 = "98";
  int p1 = int.parse(price2);
  print(p1);


  var score = 100;
  String tranformString = score.toString();
  print(tranformString);


var a;
int m;
m ??= 10;

a??= 10;
print(a);

bool flag = true;
String str = flag ? "true" : "false";
print(str);


//try catch
print('tyr catch');
String catchStr = "";
try {
  var number = double.parse(catchStr);
  print(number);
}catch(err){
  print(err);
}





sushuFunx();

}

// 算数运算符
void sushuFunx(){

print("------------");
  int a = 120;
  int b = 24;

  print(a+ b);
  print(a-b);
  print(a*b);
  print(a/b);
  print(a%b);//取余数
  print(a~/b);//取整数


}
// 关系运算符
void guanxiFunx(){
   //  > >= < <= == != 
}

//逻辑运算符
void loji(){
  // || && !
}


//基础复制
void baseFunx(){
  // =  ??=
  int b;
  b ??= 20;
}

//复核运算符
void fuheFunx(){

  // +=  *= /= 
}