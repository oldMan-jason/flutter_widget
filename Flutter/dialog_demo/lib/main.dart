

import 'package:flutter/material.dart';


import 'package:fluttertoast/fluttertoast.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialog Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AlertDialogPage(),
    );
  }
}

class AlertDialogPage extends StatefulWidget {
  AlertDialogPage({Key key}) : super(key: key);

  @override
  _AlertDialogPageState createState() => _AlertDialogPageState();
}



class _AlertDialogPageState extends State<AlertDialogPage> {

/* AlertDialog */
  _showAlertDialog() async{

  var result = await showDialog(
      context: context,
      builder: (context){
        return Container(
          color: Colors.transparent,
          child: AlertDialog(
            title: Text('提示信息'),
            content: Text('您确定要删除吗?'),
            actions: <Widget>[
              FlatButton(onPressed: (){
                // Navigator.of(context).pop();
                Navigator.pop(context,'cancel');
              }, child: Text('取消')),
              FlatButton(onPressed: (){
                // Navigator.of(context).pop();
                 Navigator.pop(context,'ok');
              }, child: Text('确定'))
            ],
          ),
        );
      }
    );
    print(result);
  }

  /* SimpleDialog */
  _showsimpleDialog(){
   
    showDialog(context: context,
      builder: (context){
        return SimpleDialog(
          title: Text('SimpleDialog提示'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('Options1'),
              onPressed: (){
                print('Optins1');
                Navigator.pop(context);
              },
            ),
            SimpleDialogOption(
              child: Text('Options2'),
              onPressed: (){
                print('Optins2');
                Navigator.pop(context);
              },
            ),
            SimpleDialogOption(
              child: Text('Options3'),
              onPressed: (){
                print('Optins3');
                Navigator.pop(context);
              },
            )
          ],
        );
      }
    );
  }


  /* showModalBottomSheet */
  _showBottomSheet(){

    showModalBottomSheet(context: context, builder:(context){
        return Container(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('sheet1'),
                onTap: (){
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text('sheet2'),
                onTap: (){
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text('sheet3'),
                onTap: (){
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text('sheet4'),
                onTap: (){
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
        );
    });
  }

  _showToast(){

    Fluttertoast.showToast(
      msg: '系统异常',
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black45,
      textColor: Colors.white,
      fontSize: 15,
      timeInSecForIos: 4
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog Demo'),
      ),
      body: Center(
       child: Column(
         children: <Widget>[
           SizedBox(height: 60),
           RaisedButton(onPressed: this._showAlertDialog,
           child: Text(
             'AlertDialog'
           ),
           ),
           RaisedButton(onPressed: this._showsimpleDialog,
           child: Text(
             'SimpleDialog'
           ),
           ),
           RaisedButton(onPressed: this._showBottomSheet,
           child: Text(
             'BottomSheet'
           ),
           ),
           RaisedButton(onPressed: this._showToast,
           child: Text(
             'Toast'
           ),
           )
         ],
       ),
    ),
    );
  }
}