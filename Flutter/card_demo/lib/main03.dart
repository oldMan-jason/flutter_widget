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
         title: Text('Card_demo'),
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
 * 实现布局界面
 * 
 */
class BodyApp extends StatelessWidget{
    @override
  Widget build(BuildContext context) {

    return ListView(

      children: <Widget>[
        Card(
          child: Column(
            children: <Widget>[

              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1142689556,1040586762&fm=26&gp=0.jpg',fit: BoxFit.cover,),
              ),
              ListTile(
                //使用 CircleAvatar 设置头像
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1580721307738&di=b546cd9072ea5f30ba5d5bb058c5b3a7&imgtype=0&src=http%3A%2F%2Fwww.quancang.com%2FUploadFile%2F2008-6%2F200861722453063253.jpg'),
                  ),
                  title: Text('邵泽俊'),
                  subtitle: Text('国网商旅云技术有限公司'),
              )
            ],

          ),
        ),
        Card(
          child: Column(
            children: <Widget>[

              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1142689556,1040586762&fm=26&gp=0.jpg',fit: BoxFit.cover,),
              ),
              ListTile(
                  leading: ClipOval(
                    child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1580721307738&di=b546cd9072ea5f30ba5d5bb058c5b3a7&imgtype=0&src=http%3A%2F%2Fwww.quancang.com%2FUploadFile%2F2008-6%2F200861722453063253.jpg',fit: BoxFit.cover,),
                  ),
                  title: Text('测试人员'),
                  subtitle: Text('国网商旅云技术有限公司'),
              )

            ],

          ),
        ),
        Card(
          child: Column(
            children: <Widget>[

              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1142689556,1040586762&fm=26&gp=0.jpg',fit: BoxFit.cover,),
              ),
              ListTile(
                  leading: ClipOval(
                    child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1580721307738&di=b546cd9072ea5f30ba5d5bb058c5b3a7&imgtype=0&src=http%3A%2F%2Fwww.quancang.com%2FUploadFile%2F2008-6%2F200861722453063253.jpg',fit: BoxFit.cover,),
                  ),
                  title: Text('上帝'),
                  subtitle: Text('国网商旅云技术有限公司'),
              )

            ],

          ),
        )

      ],
    );

  }
}