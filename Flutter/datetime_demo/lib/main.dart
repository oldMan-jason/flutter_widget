import 'package:flutter/material.dart';

//框架导入
import 'package:date_format/date_format.dart';


/**
 * 配置flutter 国际化的库，不需要添加，只需要pubspec.ymal配置一下即可
 * 
*/
import 'package:flutter_localizations/flutter_localizations.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '日期组件 Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '日期组件 Demo'),

      localizationsDelegates: [                             //此处
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [                                   //此处
        // const Locale('zh','CH'),
        // const Locale('en','US'),
      ],

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
  //获取当前的时间
  var time = DateTime.now();
  String timeStr;

  var timeStr2;

  @override
  void initState() {
    super.initState();

    print(time);

    //日期转时间戳
    int timestamp = time.millisecondsSinceEpoch;

    print('时间戳: ${timestamp}  长度:${timestamp.toString().length}');

    //时间戳转日期
    //微秒
    var date1 = DateTime.fromMicrosecondsSinceEpoch(timestamp * 1000);
    print(date1);
    //毫秒
    var date2 = DateTime.fromMillisecondsSinceEpoch(timestamp);
    print(date2);

    String timeFormate =
        formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd, '日']);
    print(timeFormate);
    this.timeStr = timeFormate;

    this.timeStr2 = formatDate(DateTime.now(), [HH,'时',mm,'分']);



  }

  /* 调用日期组件 */
  _showDateWidget() async {
    //必须配置的参数
    /*
      Future 返回值类型。标识为异步  
    */
    var result = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1989), lastDate: DateTime(2210));
    setState(() {
      this.timeStr = formatDate(result, [yyyy, '年', mm, '月', dd, '日']);
    });
    print('异步函数返回结果： ${result}');

    //或者是： 
    //  showDatePicker(
    //     context: context,
    //     initialDate: DateTime.now(),
    //     firstDate: DateTime(1989),
    //     lastDate: DateTime(2210)
    // ).then((value) {
    //   print(value);
    // });
  }


  _showTimeWidget() async{

    var result = await showTimePicker(context: context, initialTime: TimeOfDay.now());

    setState(() {
      this.timeStr2 = result.format(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(this.timeStr),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                  onTap: this._showDateWidget,
                ),
                SizedBox(height: 20),
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(this.timeStr2),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                  onTap: this._showTimeWidget,
                )
              ],
            )
          ],
        )));
  }
}
