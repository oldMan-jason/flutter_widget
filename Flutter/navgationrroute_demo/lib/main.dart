import 'package:flutter/material.dart';
import 'routes/Routes.dart';




void main(){
 runApp(MyApp()); 
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
/**
 * 命名路由需要在初始化进行根组件里面
 */
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //初始化根组件
      initialRoute: '/',
      //监听事件
      onGenerateRoute: onGenerateRoute
    );
  }
}

