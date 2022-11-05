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
 * Card 的使用
 * 
 */
class BodyApp extends StatelessWidget{
    @override
  Widget build(BuildContext context) {

    return  ListView(

     children: <Widget>[
       Card(
         child: Column(
           children: <Widget>[
            
              ListTile(
                title: Text('邵泽俊',style: TextStyle(
                  fontSize: 20.0,
                )),
                subtitle: Text('iOS开发工程师'),
              ),
              ListTile(
                title: Text('国网商旅云技术有限公司'),
                subtitle: Text('负责项目：国网商旅'),
              ),

           ],
         ),
       ),
       Card(
         child: Column(
           children: <Widget>[
              ListTile(
                title: Text('邵泽俊',style: TextStyle(
                  fontSize: 20.0,
                )),
                subtitle: Text('iOS开发工程师'),
              ),
              ListTile(
                title: Text('国网商旅云技术有限公司'),
                subtitle: Text('负责项目：国网商旅'),
              ),

           ],
         ),
       ),
       Card(
         child: Column(
           children: <Widget>[
              ListTile(
                title: Text('邵泽俊',style: TextStyle(
                  fontSize: 20.0,
                )),
                subtitle: Text('iOS开发工程师'),
              ),
              ListTile(
                title: Text('国网商旅云技术有限公司'),
                subtitle: Text('负责项目：国网商旅'),
              ),

           ],
         ),
       ),
     ], 
    );

  }
}