import 'package:flutter/material.dart';

import '../../push/TripPushPage.dart';


class TripPage extends StatefulWidget {
  TripPage({Key key}) : super(key: key);

  @override
  _TripPageState createState() => _TripPageState();
}

class _TripPageState extends State<TripPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('普通路由'),
          RaisedButton(
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder:(context){
                  return TripPushPage();
                })
              );
            },
            child: Text('自定义POP'),
          ),
        ],
      );
  }
}