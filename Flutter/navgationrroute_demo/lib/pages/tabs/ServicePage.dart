import 'package:flutter/material.dart';
class ServicePage extends StatefulWidget {
  ServicePage({Key key}) : super(key: key);

  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
     child: Column(

       children: <Widget>[
         SizedBox(height: 200),
         RaisedButton(
           onPressed: (){
            Navigator.pushNamed(context, '/login');
           },
           child: Text('跳转登陆界面'),
         ),
         RaisedButton(
           onPressed: (){
             Navigator.pushNamed(context, '/register');
           },
           child: Text('跳转注册界面'),
         ),


       ],
     ),  
    );
  }
}