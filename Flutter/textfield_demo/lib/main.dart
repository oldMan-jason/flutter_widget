import 'package:flutter/material.dart';
import 'MyTextfield.dart';
import 'CheckBoxPage.dart';
import 'RadioPage.dart';
import 'SwitchPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {'/textfield':(context,{arguments})=>MyTextFieldPage(arguments:arguments)},
      home: MyHomePage(title: 'TextField Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      
      body:Center(child:Column(

        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          RaisedButton(onPressed: (){
            // Navigator.of(context).push(MaterialPageRoute(builder: (context){
            //   return MyTextFieldPage();
            // }));
            Navigator.pushNamed(context, '/textfield',arguments: '我是TextField的默认值');
          },
          child: Text('TextField演示组件'),
          
          ),
          SizedBox(height: 10),
          RaisedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return CheckBoxPage();
            }
            ));
          },
          child: Text('CheckBox演示'),
          
          ),
          SizedBox(height: 10),
          RaisedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return RadioPage();
            }
            ));
          },
          child: Text('Radio演示组件'),
          ),
          SizedBox(height: 10),
          RaisedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return SwitchDemo();
            }
            ));
          },
          child: Text('Switch演示组件'),
          )
        ], 
      ))
    );
  }
}
