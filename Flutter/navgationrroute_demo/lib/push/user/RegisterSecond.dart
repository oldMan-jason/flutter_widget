
import 'package:flutter/material.dart';

class RegisterSecondPage extends StatelessWidget {

  final arguments;
  const RegisterSecondPage({Key key,this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('注册2'),
     ), 
     body: ListView(
        children: <Widget>[
          Text('手机号为: ${this.arguments}\n 请输入密码'),
          RaisedButton(
            onPressed: (){
              //路由替换
              // Navigator.pushReplacementNamed(context, '/registerThird',arguments: {'mobile':this.arguments,'pwd':123456});
              //非替换路由
              Navigator.pushNamed(context, '/registerThird',arguments: {'mobile':this.arguments,'pwd':123456});
            },
            child: Text('下一步'),
          )
        ], 

     ),
    );
  }
}