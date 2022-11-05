
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('注册1'),
     ), 
     body: ListView(
        children: <Widget>[
          Text('请输入手机号'),
          Text('演示了路由的替换操作'),
          RaisedButton(
            onPressed: (){
              //路由替换
              // Navigator.of(context).pushReplacementNamed('/registerSecond',arguments: '1580331737');
              //或者
              // Navigator.pushReplacementNamed(context, '/registerSecond',arguments: '1580331737');

              //非替换路由
              Navigator.pushNamed(context, '/registerSecond',arguments: '1580331737');
            },
            child: Text('下一步'),
          
          )
        ], 

     ),
    );
  }
}