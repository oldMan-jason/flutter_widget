import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('ListView'),
       ),
       body: BodyApp(),
     ), 
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
    );
  }
}

/**
 * Stack 层叠组件
 */
class BodyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
      // 设置子元素的显示方位
      // alignment: Alignment.center,
      //可以通过给Alignment指定参数 x (-1 ,1) y(-1,1)
      alignment: Alignment(0,-1),
      children: <Widget>[
        Container(
          height: 300,
          width: 300,
          color: Colors.red,
        ),
        Text('测距卡罗纳打开的'),
      ],
    ),
    );
  }
}
