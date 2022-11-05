
import 'package:flutter/material.dart';
import 'package:navgationrroute_demo/push/user/RegisterSecond.dart';
import 'package:navgationrroute_demo/routes/Routes.dart';
import 'Register.dart';
import '../../pages/TabState.dart';


class RegisterThirdPage extends StatelessWidget {
  final arguments;
  const RegisterThirdPage({Key key,this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('注册3'),
     ), 
     body: ListView(
        children: <Widget>[
          Text('手机号：${this.arguments['mobile']} \n 密码：${this.arguments['pwd']}'),
          RaisedButton(
            onPressed: (){

              Navigator.pushNamedAndRemoveUntil(context, '/register', (routes)=>routes==null);
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                builder: (context){
                  return TabState(index: 3);
                }
              ), (routes) => routes ==null);
            },
            child: Text('注册完成'),
          
          )
        ], 

     ),
    );
  }
}