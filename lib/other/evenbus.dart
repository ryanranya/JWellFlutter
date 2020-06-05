import 'package:flutter/material.dart';
import 'package:jwellflutter/other/even_bus_initlze.dart';
/**
 * 1、创建自己需要共享的数据
 * 2、在应用程序的顶层ChangeNotifierProvider
 * 3、在其他位置使用共享数据
 * provider.of的使用:当provider中的数据发生改变是，它所在的Widget里面的build方法会全部重新调一次
 * Consumer可以拿到provider 里面的属性。(相对推荐)当数据方式改变的时候只会执行Consumer里面传入的build方法会被重新执行
 * Selector：1、Selector方法对原有的数据进行转换，2、shouldRebuild是否需要重新构建
 * */


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RYHomePage(),
    );
  }
}

class RYHomePage extends StatefulWidget {
  @override
  _RYHomePageState createState() => _RYHomePageState();
}

class _RYHomePageState extends State<RYHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JWell Flutter',
        ),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RYButton(),
              RYText(),
            ],
          )
      ),
    );
  }
}

class RYButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text("按钮"),
        onPressed: (){
//          2、监听发送事件
          evenBus.fire(UserInfoEvenBus(UsersInfo("ryan", 18)));
        });
  }
}

class RYText extends StatefulWidget {
  @override
  _RYTextState createState() => _RYTextState();
}

class _RYTextState extends State<RYText> {
  String _message = "Hello word";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    3、监听事件类型
    evenBus.on<UserInfoEvenBus>().listen((data) {
      print(data.userInfos.nickName);
      print(data.userInfos.level);
      _message = "${data.userInfos.nickName},${data.userInfos.level}";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Text(_message,style: TextStyle(fontSize: 32),);
  }
}

class UsersInfo {
  String nickName;
  int level;
  UsersInfo(this.nickName, this.level);
}

class UserInfoEvenBus{
  UsersInfo userInfos;
  UserInfoEvenBus(this.userInfos);
}
