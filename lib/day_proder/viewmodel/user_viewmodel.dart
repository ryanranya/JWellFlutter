
import 'package:flutter/foundation.dart';
import 'package:jwellflutter/day_proder/model/model.dart';

class RYUserViewModel extends ChangeNotifier{
  UserInfo _user;

  RYUserViewModel(this._user);
  UserInfo get user => _user;

  set user(UserInfo value) {
    _user = value;
    notifyListeners();
  }
}