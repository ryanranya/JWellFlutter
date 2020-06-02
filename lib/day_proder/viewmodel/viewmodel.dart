import 'package:flutter/cupertino.dart';

//创建需要共享的数据
class RYConterViewModel extends ChangeNotifier {

  int _conter = 110;

  int get conter => _conter;

  set conter(int value) {
    _conter = value;
//    通知所有的监听者
    notifyListeners();
  }
}