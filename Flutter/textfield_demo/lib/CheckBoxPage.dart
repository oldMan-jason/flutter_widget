import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  bool flag = true;

  var list = [{'title':'checkBoxTile标题1','subTitle':'这是副标题1','flag':false},
              {'title':'checkBoxTile标题2','subTitle':'这是副标题2','flag':false},
              {'title':'checkBoxTile标题3','subTitle':'这是副标题3','flag':false},
              {'title':'checkBoxTile标题4','subTitle':'这是副标题4','flag':false},
              ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CheckBox演示'),
        ),
        body: Column(
          children: <Widget>[
            Checkbox(
                value: this.flag,
                activeColor: Colors.red,
                onChanged: (value) {
                  setState(() {
                    this.flag = value;
                  });
                }),
            Text(this.flag ? '选中' : '未选中'),
            Divider(),

/*
  CheckboxListTile 演示
**/
            CheckboxListTile(
              value: this.list[0]['flag'],
              onChanged: (value) {
                setState(() {
                  this.list[0]['flag'] = value;
                });
              },
              title: Text(this.list[0]['title']),
              subtitle: Text(this.list[0]['subTitle']),
              secondary: Icon(Icons.check),
            ),
            CheckboxListTile(
              value: this.list[1]['flag'],
              onChanged: (value) {
                setState(() {
                  this.list[1]['flag'] = value;
                });
              },
              title: Text(this.list[1]['title']),
              subtitle: Text(this.list[1]['subTitle']),
              secondary: Icon(Icons.menu),
            ),
            CheckboxListTile(
              value: this.list[2]['flag'],
              onChanged: (value) {
                setState(() {
                  this.list[2]['flag'] = value;
                });
              },
              title: Text(this.list[2]['title']),
              subtitle: Text(this.list[2]['subTitle']),
              secondary: Icon(Icons.settings),
            ),
            CheckboxListTile(
              value: this.list[3]['flag'],
              onChanged: (value) {
                setState(() {
                  this.list[3]['flag'] = value;
                });
              },
              title: Text(this.list[3]['title']),
              subtitle: Text(this.list[3]['subTitle']),
              secondary: Icon(Icons.home),
            ),
          ],
        ));
  }
}
