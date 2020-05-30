import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:jwellflutter/api/http_request.dart';

main() {
  runApp(MyApp());
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
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: Text(
          "作业任务",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: RYHomeContent(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class RYHomeContent extends StatefulWidget {
  @override
  _RYHomeContentState createState() => _RYHomeContentState();
}

class _RYHomeContentState extends State<RYHomeContent> {
  @override
  void initState() {
    // TODO: implement initState
//    发送网络请求
    HttpRequest.getRequest("https://httpbin.org/get", params: {"name": "Ryan"},
        inter: InterceptorsWrapper(onError: (error) {
          print(error);
        })).then((response) {
      print(response);
    }).catchError((err) {

    });

    HttpRequest.postRequest("https://httpbin.org/post",params: {"name":"test"},inter: InterceptorsWrapper(onError: (error){
      print(error);
    })).then((resopnse){
      print(resopnse);
    }).catchError((error){

    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}