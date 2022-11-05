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
 * Stack 层叠组件结合 Align组件的使用
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
         alignment: Alignment(0, 0),
         children: <Widget>[
          Align(
             alignment: Alignment.topLeft,
             child: Icon(Icons.hearing,size: 30,color: Colors.white),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Icon(Icons.home,size: 30,color: Colors.white),
          ),
          
          Align(
            alignment: Alignment.bottomCenter,
            child: Icon(Icons.help,size: 30,color: Colors.white),
          ),
           
         ],
       ),
     ), 
    );
  }
}
