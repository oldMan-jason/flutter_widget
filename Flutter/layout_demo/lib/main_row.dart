import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('RowApp'),
        ),
        //Row组件
        body: RowApp(),

      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}


/**
 * Row 组件  实现水平排列三个按钮
 */
class RowApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {

    // return Container(
    //   width: 100,
    //   height: 100,
    //   color: Colors.red,
    //   child: Icon(Icons.home,color: Colors.white,),
    // );

    //改造
    return Container(

      height: 500,
      width: 500,
      color: Colors.green,

      child: Row(
      //主轴的拍讯方式。
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,//等间距
      //次轴的排序方式
      crossAxisAlignment: CrossAxisAlignment.center,
      
      children: <Widget>[
          CustomWidget(Icons.home,color:Colors.red),
          CustomWidget(Icons.search,color:Colors.orange),
          CustomWidget(Icons.tab_unselected,color:Colors.yellow),
      ],
    ),
    );
  }
}


/**
 * 自定义组件
 */

class CustomWidget extends StatelessWidget{ 

  double size;
  IconData icon;
  Color color;
  
  CustomWidget(this.icon,{this.color = Colors.green,this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        color: this.color,
        child: Icon(this.icon,color: Colors.white,size: this.size)
    );

  }
}