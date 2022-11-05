import 'package:flutter/material.dart';

void main(){

  runApp(MySuperApp());

}

class MySuperApp extends StatelessWidget{

@override
  Widget build(BuildContext context) {
    //根组件
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text(
                '国网商旅'
              ),
          ),
          body: MyContainerApp(),
      ),
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
    );
  }
}

class MyContainerApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      
      //container容器中子视图的对齐方式
      alignment: Alignment.centerRight,
    
      //容器的宽高
      width: 400.0,
      height: 300.0,

      // margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
      //设置container组件与外部其他组件的间距
      margin: EdgeInsets.all(20),

      //设置container组件与child组件之间的间距
      padding: EdgeInsets.all(15),

      //对容器的装饰
      decoration: BoxDecoration(
        color: Colors.orange,//容器的背景颜色
        //容器的边框颜色和宽度
        border: Border.all(
          color: Colors.red,
          width: 2.0,
        ),
        //设置边框的圆角
        borderRadius: BorderRadius.all(Radius.circular(14.0))
      ), 

      //Text组件
       child: Text(
         'container组件有没有什么问题container组件有没有什么问题组件有没有什么问题组件有没有什么问题',
         //设置文本的对齐方式
         textAlign: TextAlign.center,
         //文本方向
         textDirection: TextDirection.ltr,
        //文本的最大行数
         maxLines: 3,
         //文字超出后的处理方式
         overflow: TextOverflow.ellipsis,//直接省略
        //  overflow: TextOverflow.clip,//直接裁剪
        // overflow: TextOverflow.fade,//渐隐

        //字体的显示倍率
        textScaleFactor:1.5,

        //文本样式
         style: TextStyle(

            //文本字号
            fontSize: 20.0,

            //文字的装饰线样式 
            decoration: TextDecoration.underline,//下划线
            // decoration: TextDecoration.lineThrough,//删除线
            // decoration: TextDecoration.overline,//上划线

            //文字装饰线风格
            // decorationStyle:TextDecorationStyle.double,//双线
            // decorationStyle:TextDecorationStyle.wavy,//波浪线
            // decorationStyle:TextDecorationStyle.solid,//一根实线
            decorationStyle:TextDecorationStyle.dotted,//虚线
            // decorationStyle:TextDecorationStyle.dashed,//加粗虚线

            //单词的间距
            wordSpacing: 5.0,

            //字母之间的间距
            letterSpacing: 5.0,

            //文字样式
            // fontStyle: FontStyle.italic,//字体倾斜
            fontStyle: FontStyle.normal,//字体正常

            //字体颜色
            color: Colors.red,

            //字体加粗
            fontWeight: FontWeight.bold

         ),
       ), 
    );
  }
}