import 'package:flutter/material.dart';
import 'package:jwellflutter/other/menu_01.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),

      home: Scaffold(
        appBar: AppBar(
          title: Text("menu"),
        ),
        body: Menu(),
      ),
    );
  }
}

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ButtonTheme(
        minWidth: 120,
        height: 60,
        child: FlatButton(
            splashColor: Colors.transparent,
            color: Colors.blue,
            onPressed: () => myDialog(context),
//            {
//              Navigator.push(context, menuRouter(ShowMenuPage()));
//              Navigator.of(context).push(
//                PageRouteBuilder(
//                  pageBuilder: (context, anm1, anm2) {
//                    return FadeTransition(
//                      opacity: anm1,
//                      child: ShowMenuPage(),
//                    );
//                  },
//                ),
//              );
//            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.share,
                  color: Colors.white,
                ),
                Text(
                  "分享",
                  style: TextStyle(color: Colors.white),
                )
              ],
            )),
      ),
    );
  }
}

Future myDialog(context){
  return showDialog<Null>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return GestureDetector(							// 手势处理事件


          onTap: (){
            Navigator.of(context).pop();				//退出弹出框
          },


          child: Container(								//弹出框的具体事件
            child: Material(
              color: Color.fromRGBO(0, 0, 0, 0.5),
              child: Center(
                child: Text('具体操作',style: TextStyle(color: Colors.white),),
              ),
            ),
          )
      );

    },
  );
}