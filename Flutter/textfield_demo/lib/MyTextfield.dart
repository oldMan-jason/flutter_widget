import 'package:flutter/material.dart';

class MyTextFieldPage extends StatefulWidget {
  final arguments;
  MyTextFieldPage({Key key, this.arguments}) : super(key: key);

  @override
  _MyTextFieldPageState createState() => _MyTextFieldPageState();
}

/* 演示TextFeild取值 */
class _MyTextFieldPageState extends State<MyTextFieldPage> {
  String value;
  //TextField的监听器
  var _defaultTextController = TextEditingController();

  @override
  void dispose() {
    //销毁监听器
    this._defaultTextController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    this._defaultTextController.text = '默认值';

    //监听TextField的值变化
    this._defaultTextController.addListener(() {
      print('input监听：${this._defaultTextController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    String textValue = ModalRoute.of(context).settings.arguments;
    // print(textValue);
    this.value = textValue;
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField取值'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              //添加监听器
              controller: this._defaultTextController,
              decoration: InputDecoration(hintText: '请输入'),

              onChanged: (value) {
                setState(() {
                  print('onChanged:'+value);
                });
              },
              onSubmitted: (value) {
                print('onSubmitted:'+value);
              },
            ),
            SizedBox(height: 10),
            RaisedButton(
              onPressed: () {
                // print(this.textValue);
              },
              child: Text('获取TextField值'),
            ),
            Tab(
              text: this.value,
            ),
            SizedBox(height: 10),
            Tab(
              text: this._defaultTextController.text,
            )
          ],
        ),
      ),
    );
  }
}

/* TextField演示 */
class TextFieldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TextField演示'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              //输入文本
              TextField(),

              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      //设置placeholder
                      hintText: '请输入名称',
                      //设置文本的边框
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  //多行输入设置
                  maxLines: 3,
                  decoration: InputDecoration(

                      //设置placeholder
                      hintText: '多行文本输入框',
                      //设置文本的边框
                      border: OutlineInputBorder()),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      icon: Icon(Icons.security),
                      //设置placeholder
                      hintText: '密码输入框',
                      labelText: '密码',
                      //设置文本的边框
                      border: OutlineInputBorder()),
                ),
              ),
            ],
          ),
        ));
  }
}
