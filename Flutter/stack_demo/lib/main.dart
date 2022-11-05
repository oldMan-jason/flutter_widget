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
 * Stack 层叠组件结合 Positioned组件的使用
 * 主要属性 left right top width height bottom
 * 一般是两个方位结合使用
 */
class BodyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
     child: Container(

       width: 300,
       height: 300,
       color: Colors.blue,
       child: Stack(
        //  alignment: Alignment(0, 0),
         children: <Widget>[
          Positioned(
            left: 10,
            top: 100,
             child: Icon(Icons.hearing,size: 30,color: Colors.white),
          ),
          Positioned(
            width: 80,
            height: 80,
            child: Icon(Icons.home,size: 30,color: Colors.white),
          ),
          
          Positioned(
            height: 100,
            child: Icon(Icons.help,size: 30,color: Colors.white),
          ),
           
         ],
       ),
     ), 
    );
  }
}
