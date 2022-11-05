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
         title: Text('Wrap_Demo流水布局'),
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
 * 实现流水布局样式，row和column都是单列布局，wrap可以实现自动换行显示
 * 1. 自定义button
 * 2. 实现流水布局
 *  this.direction = Axis.horizontal,
    this.alignment = WrapAlignment.start,
    this.spacing = 0.0,
    this.runAlignment = WrapAlignment.start,
    this.runSpacing = 0.0,
    this.crossAxisAlignment = WrapCrossAlignment.start,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    List<Widget> children = const <Widget>[],
 */
class BodyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Wrap(
      direction: Axis.horizontal,//布局的方向 
      alignment: WrapAlignment.start,//主抽的对齐方式
      // crossAxisAlignment: WrapCrossAlignment.center,
      runAlignment: WrapAlignment.start,
      spacing: 10,//main axis 在主抽方向的子组件的间距
      runSpacing: 10,//cross axis的间距
      textDirection: TextDirection.ltr,//文字的防线
      children: <Widget>[
        MyButton('刷卡button刷卡button'),
        MyButton('刷卡buttonahfda'),
        MyButton('刷卡button'),
        MyButton('刷卡buttondahdka'),
        MyButton('刷卡button刷卡button'),
        MyButton('刷卡buttonahfda'),
        MyButton('刷卡button'),
        MyButton('刷卡buttondahdka'),
        MyButton('刷卡button刷卡button'),
        MyButton('刷卡buttonahfda'),
        MyButton('刷卡button'),
        MyButton('刷卡buttondahdka'),

      ],
    );
  }
}



/**
 * 自定义一个button
 */
class MyButton extends StatelessWidget{

  final String buttonText;

  MyButton(this.buttonText);

  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        print('我被点击');
      },
      child: Text(this.buttonText),
      textColor: Theme.of(context).accentColor
    
    );
  } 
}