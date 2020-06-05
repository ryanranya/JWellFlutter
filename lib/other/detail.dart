import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RYDetailPage extends StatelessWidget {
  final String _message;

  RYDetailPage(this._message);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
//      当返回为true时可以自动返回，flutter帮助执行返回操作
//    当返回为false的时候，自行写返回代码
      onWillPop: (){
        _backToHomePage(context);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("详情页面"),
//自定义返回按钮
//        leading: IconButton(
//            icon: Icon(Icons.arrow_back),
//            onPressed: () => _backToHomePage(context)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('详情页面${_message}'),
              RaisedButton(
                onPressed: () => _backToHomePage(context),
                child: Text('回到首页'),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _backToHomePage(BuildContext context) {
    Navigator.of(context).pop("detail message");
  }
}
