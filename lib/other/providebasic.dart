import 'package:flutter/material.dart';
import 'package:jwellflutter/day_proder/viewmodel/viewmodel.dart';
import 'package:provider/provider.dart';

/**
 * 1、创建自己需要共享的数据
 * 2、在应用程序的顶层ChangeNotifierProvider
 * 3、在其他位置使用共享数据
 * provider.of的使用:当provider中的数据发生改变是，它所在的Widget里面的build方法会全部重新调一次
 * Consumer可以拿到provider 里面的属性。(相对推荐)当数据方式改变的时候只会执行Consumer里面传入的build方法会被重新执行
 * Selector：1、Selector方法对原有的数据进行转换，2、shouldRebuild是否需要重新构建
 * */
main() {
//  顶层来包裹他
  runApp(ChangeNotifierProvider(
    create: (context) => RYConterViewModel(),
    child: MyApp(),
  ));
}

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
            RYProderShowData01(),
            RYProderShowData02(),
          ],
        ),
      ),
//      这里的类型可以做转换
      floatingActionButton: Selector<RYConterViewModel, RYConterViewModel>(
        selector: (context, counterVM) => counterVM,
//        是否需要重新构建， fase 不需要
        shouldRebuild: (prev, next) => false,
        builder: (context, counterVM, child) {
          return FloatingActionButton(
            child: child,
            onPressed: () {
              counterVM.conter += 1;
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class RYProderShowData01 extends StatefulWidget {
  @override
  _RYProderShowData01State createState() => _RYProderShowData01State();
}

class _RYProderShowData01State extends State<RYProderShowData01> {
  @override
  Widget build(BuildContext context) {
//    使用共享数据
    int conter = Provider.of<RYConterViewModel>(context).conter;
    return Card(
      color: Colors.orange,
      child: Text(
        "当前计数：${conter}",
      ),
    );
  }
}

class RYProderShowData02 extends StatefulWidget {
  @override
  _RYProderShowData02State createState() => _RYProderShowData02State();
}

class _RYProderShowData02State extends State<RYProderShowData02> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Consumer<RYConterViewModel>(
        builder: (context, conterVM, child) {
          return Text("当前计数:${conterVM.conter}");
        },
      ),
    );
  }
}
