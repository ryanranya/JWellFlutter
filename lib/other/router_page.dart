import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';
import 'package:jwellflutter/other/about_page.dart';
import 'package:jwellflutter/other/detail.dart';
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
//      路由映射
      routes: {
        RYHomePage.routName: (ctx) => RYHomePage(),
        RYAboutPage.routName:(ctx) => RYAboutPage()
      },
      initialRoute: RYHomePage.routName,
    );
  }
}

class RYHomePage extends StatefulWidget {

  static const String routName = "/other";

  @override
  _RYHomePageState createState() => _RYHomePageState();
}

class _RYHomePageState extends State<RYHomePage> {

  String _homeMessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '首页',
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("${_homeMessage}"),
            RaisedButton(
              onPressed: () => _jumpToDetail(context),
              child: Text("跳转到详情"),
            ),
            RaisedButton(
              onPressed: () => _jumpToAbout(context),
              child: Text("跳转到关于我们"),
            ),
            RaisedButton(
              onPressed: () => _jumpToDetail2(context),
              child: Text("跳转到详情"),
            ),
          ],
        ),
      ),
    );
  }

  void _jumpToDetail(BuildContext context) {
    Future navi = Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) {
          return RYDetailPage("a hoem page count");
        },
      ),
    );
    navi.then((res) {
      setState(() {
        _homeMessage = res;
      });
    });
  }

  void _jumpToAbout(BuildContext context) {
    Navigator.of(context).pushNamed(RYAboutPage.routName,arguments: "a home message");

  }

  void _jumpToDetail2(BuildContext context) {
    Navigator.of(context).pushNamed(RYAboutPage.routName,arguments: "a home message");

  }

}

