import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('登陆'),
     ), 
     body: Container(
      child: ListView(
      
       children: <Widget>[
         SizedBox(height: 100),
         Center(
            child:Text('账号密码输入界面'),
         ),
         SizedBox(height: 30),
         RaisedButton(
           onPressed: (){
             Navigator.of(context).pop();
           },
           child:Text('登陆'),
         )
       ], 
       
      ),
    ),
    );
  }
}