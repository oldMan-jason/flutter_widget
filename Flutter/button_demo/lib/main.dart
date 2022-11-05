import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Buttons样式'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('-----介绍RaisedButton-----'),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  /**
                   * 常用的button属性设置
                   * */
                  RaisedButton(
                    //设置按钮的阴影
                    elevation: 5,
                    //设置圆角
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {},
                    child: Text('RaisedButton'),
                    //修改按钮的文字颜色
                    textColor: Colors.blue,
                    //设置按钮的背景颜色
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 10),
              /**
               * 设置button的宽高
               * */
              Container(
                width: 200,
                height: 50,
                child: //设置button的宽高
                    RaisedButton(
                  onPressed: () {},
                  child: Text('设置RaisedButton的宽高,使用Container'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              /**
              * 自适应屏幕的宽度button
             */
              Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.all(10),
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text('自适应屏幕RaisedButton'),
                    ),
                  )),
                ],
              ),
              /**
              * 设置button前面的icon
              */
              RaisedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.search),
                label: Text('搜索按钮'),
                textColor: Colors.white,
                color: Colors.blue,
              ),
              /**
              * 设置button前面的icon
              */
              Container(
                  width: 60,
                  height: 60,
                  child: RaisedButton(
                    onPressed: () {},
                    textColor: Colors.blue,
                    color: Colors.white,
                    shape: CircleBorder(side: BorderSide(color: Colors.blue)),
                    child: Text('原型按钮'),
                  )),

              SizedBox(height: 10),
              //横线组件
              Divider(color: Colors.blue, height: 5),
              SizedBox(height: 10),
              Text('-----介绍FlatButton-----'),
              FlatButton(
                  onPressed: () {},
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text('FlatButton')),

              Divider(color: Colors.blue, height: 5),
              Text('-----介绍OutlineButton-----'),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.all(10),
                    child: OutlineButton(
                        textColor: Colors.blue,
                        onPressed: () {},
                        child: Text('OutlineButton')),
                  ))
                ],
              ),

              Divider(color: Colors.blue, height: 5),
              Text('-----介绍IconButton-----'),
              IconButton(icon: Icon(Icons.menu), onPressed: () {}),
              SizedBox(height: 10),
              Divider(color: Colors.blue, height: 5),
              Text('-----介绍ButtonBar按钮组-----'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonBar(
                  // buttonPadding: EdgeInsets.all(10),
                  buttonHeight: 40,
                    children: <Widget>[
                      RaisedButton(onPressed: () {}, child: Text('登陆')),
                      RaisedButton(onPressed: () {}, child: Text('注册'))
                    ],
                  ),
                ],
              ),
              FloatingActionButton(
                  onPressed: () {}, child: Text('FloatingActionButton'))
            ],
          ),
        ),
      ),
    );
  }
}
