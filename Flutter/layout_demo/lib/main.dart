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
          title: Text('布局练习'),
        ),
        //Expanded组件
        body: WokerHomeApp(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}


/**
 *  练习  
 */
class WokerHomeApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
      child: Column(
       children: <Widget>[
         Container(
          color: Colors.black,
          height: 200,
         ),
         SizedBox(height: 5,),
         Row(
           children: <Widget>[
               Expanded(
               flex: 2,
               child: Container(
                 height: 220,
                 child: Image.network("https://www.itying.com/images/flutter/1.png",fit: BoxFit.cover,),
               ),
               ),
               SizedBox(width: 5,),
               Expanded(
               flex: 1,
               child: Container(
                height: 220,
                child: Column(
                 children: <Widget>[
                   Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.cover,height: 105,),
                   SizedBox(height: 10,),
                   Image.network('https://www.itying.com/images/flutter/4.png',fit: BoxFit.cover,height: 105,),
                 ],
               )),
               ),
           ],
         )
       ], 
      ),
    );
  }
}

