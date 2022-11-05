import 'package:flutter/material.dart';
import 'package:navgationrroute_demo/pages/TabState.dart';
import '../pages/TabState.dart';
import '../push/NewsDetalPage.dart';
import '../push/NewsInfoPage.dart';
import '../push/user/Login.dart';
import '../push/user/Register.dart';
import '../push/user/RegisterSecond.dart';
import '../push/user/RegisterThird.dart';

//跳转的路由配置
final routes = {
  '/':(context)=> TabState(),
  //命名路由不带参数
  '/newsDetail':(context)=> NewsDetailPage(),
  //命名路由带参数
  '/newsInfo':(context,{arguments})=> NewsInfoPage(arguments: arguments),

  //模拟pop指定位置
  '/login':(context)=>LoginPage(),
  '/register':(context)=>RegisterPage(),
  '/registerSecond':(context,{arguments})=>RegisterSecondPage(arguments:arguments),
  '/registerThird':(context,{arguments})=>RegisterThirdPage(arguments:arguments),
  
};


//固定写法
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name; 
  final Function pageContentBuilder = routes[name];
  
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute( builder: (context) => pageContentBuilder(context, arguments:settings.arguments));
      return route;
    }else{
        print('xxxxx');
        final Route route = MaterialPageRoute( builder: (context) => pageContentBuilder(context));
        return route;
    }
  }
};