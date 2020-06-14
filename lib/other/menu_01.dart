import 'package:flutter/material.dart';

class ShowMenuPage extends StatefulWidget {
  @override
  _ShowMenuPageState createState() => _ShowMenuPageState();
}

class _ShowMenuPageState extends State<ShowMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            width: double.infinity,
            height: 300,
            color: Colors.white,
            child: Text('123'),
          ),
        ),
      ),
    );
  }
}


class menuRouter extends PageRouteBuilder{
  final Widget page;
  menuRouter(this.page): super(
      opaque: false,
      barrierColor: Colors.black54,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) => child,
  );

}