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
         title: Text('Card_demo'),
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
 * AspectRatio 使用在图片按比例平铺中
 * aspectRatio: 设置宽高的比例
 * 
 */
class BodyApp extends StatelessWidget{
    @override
  Widget build(BuildContext context) {

    return AspectRatio(
      aspectRatio: 4/8,
      child: Container(
        color: Colors.red,
      ),
      );
  }
}