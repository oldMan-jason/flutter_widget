import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  RadioPage({Key key}) : super(key: key);

  @override
  _RadioPageState createState() => _RadioPageState();
}

//单选按钮组
/*
  Radio 是根据 value于groupvalue是否相同来判断是否选中状态
  groupValue使用的是同一个变量，标识这几个按钮是一组
**/
class _RadioPageState extends State<RadioPage> {
  int flag = 1;
  int flag2 = 4;
  int radioListTile = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio演示'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('男'),
              Container(
                width: 30,
                height: 30,
                child: Radio(
                    value: 1,
                    groupValue: this.flag,
                    onChanged: (value) {
                      setState(() {
                        this.flag = value;
                      });
                    }),
              ),
              SizedBox(width: 5),
              Text('女'),
              Container(
                width: 30,
                height: 30,
                child: Radio(
                    value: 2,
                    groupValue: this.flag,
                    onChanged: (value) {
                      setState(() {
                        this.flag = value;
                      });
                    }),
              ),
              SizedBox(width: 30),
              Text('同意'),
              Container(
                width: 30,
                height: 30,
                child: Radio(
                    value: 3,
                    groupValue: this.flag2,
                    onChanged: (value) {
                      setState(() {
                        this.flag2 = value;
                      });
                    }),
              ),
              SizedBox(width: 5),
              Text('不同意'),
              Container(
                width: 30,
                height: 30,
                child: Radio(
                    value: 4,
                    groupValue: this.flag2,
                    onChanged: (value) {
                      setState(() {
                        this.flag2 = value;
                      });
                    }),
              )
            ],
          ),
          RadioListTile(
            value: 5,
            groupValue: this.radioListTile,
            onChanged: (v) {
              setState(() {
                this.radioListTile = v;
              });
            },
            title: Text('RadioListTile标题'),
            subtitle: Text('RadioListTile副标题'),
            secondary: Icon(Icons.settings),
          ),
          RadioListTile(
            value: 6,
            groupValue: this.radioListTile,
            onChanged: (v) {
              setState(() {
                this.radioListTile = v;
              });
            },
            title: Text('RadioListTile标题'),
            subtitle: Text('RadioListTile副标题'),
            secondary: Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}
