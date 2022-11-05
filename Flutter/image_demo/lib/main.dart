import 'dart:ui';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("国网商旅"),
          ),

        //Image组件
        // body: HomeContainer(),

        //Image组件切园
        // body: ImageClipsRaduis(),
        // body: ImageClipsRaduis2(),

        //加载本地图片
        body: LoadLocalImage(),

        ),
    );
  }
}



/**
 * Image组件
 */
class HomeContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(100),
      width: 200,
      height: 200,
      // alignment: Alignment.topCenter,

      decoration: BoxDecoration(
        
        color: Colors.yellow,
        border: Border.all(
          color:Colors.black,
          width:2.0,
          ),
          borderRadius:BorderRadius.all(Radius.circular(10)),
      ),

// Image组件介绍
      child: Image.network(
        //加载网络图片
       'http://a3.att.hudong.com/68/61/300000839764127060614318218_950.jpg',
        //图片的对齐方式
        alignment: Alignment.center,

        //这两个属性配套使用，设置图片的混合模式，容器的背景颜色和图片的颜色进行混合
        // color: Colors.blue,
        // colorBlendMode: BlendMode.screen,

        //控制图片的拉伸和拥挤，这都是根据父视图来的
        // fit: BoxFit.fill,//全图显示，图片会被拉伸，并充满父容器 
        fit: BoxFit.cover,// 显示可能拉伸，可能裁剪，充满父容器，但是不会变形
        // fit: BoxFit.contain,// 原图显示

        //平铺
        // repeat: ImageRepeat.repeatX,
      )
    );
  }
}


/**
 * Image组件切圆角 方式一
 */
class ImageClipsRaduis extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      width:200,
      height: 200,
      margin: EdgeInsets.all(100),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(100),
        image: DecorationImage(
          image: NetworkImage('http://a3.att.hudong.com/68/61/300000839764127060614318218_950.jpg'),
          fit: BoxFit.cover
        )

      )

    );
  }  
}


/**
 * Image切圆角方式二: ClipOval
 */

class ImageClipsRaduis2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      width:200,
      height: 200,
      margin: EdgeInsets.all(100),
      child: ClipOval(
        child: Image.network(
          'http://a3.att.hudong.com/68/61/300000839764127060614318218_950.jpg',
          height: 100,
          width:100,
          fit: BoxFit.cover,
        )
      ),

    );
  }  
}

/**
 * 加载本地图片
 * 1. 在根目录下新建 @2x @3x @4x的文件夹，图片对应放入到文件夹中。
 * 2. 在pubspec.ymal 文件中配置本地图片的路径和名称
 */

class LoadLocalImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      width:200,
      height: 200,
      margin: EdgeInsets.all(100),
      decoration: BoxDecoration(
        color:Colors.red,
        border: Border.all(color: Colors.yellow,width: 4),
        borderRadius: BorderRadius.circular(100)
      ),
      child: Image.asset('images/baoxiao_dianfu_icon_hotel.png',fit: BoxFit.cover),
      // child: ClipOval(
      //   child: Image.asset('images/baoxiao_dianfu_icon_hotel.png',fit: BoxFit.cover,)
      // ),
    );
  }  
}