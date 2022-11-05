import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
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
 * 通过ListTile
 */
class BodyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(

      children: <Widget>[
        ListTile(
          
          // leading: Image(
          //   width: 150,
          //   height: 150,
          //   fit: BoxFit.cover,
          //   image: NetworkImage(
          //     'http://img12.3lian.com/gaoqing02/02/93/37.jpg',
          //   )
          // ),

          leading: Image.network("http://img.zybus.com/uploads/allimg/140830/1-140S0155522-50.jpg"),
          title: Text(
            '朝鲜最高领导人金正恩向习近平致亲署信表示慰问',
            style: TextStyle(
              fontSize: 20.0
            ),
          ),
          subtitle: Text('新华社北京2月1日电 2月1日，朝鲜劳动党委员长金正恩向中共中央总书记习近平致亲署信，代表朝鲜党和人民就中国防控新型冠状病毒感染肺炎疫情表示诚挚慰问并提供支持。'),
        )
      ],
    );
  }
}
