import 'package:jwellflutter/day_proder/model/model.dart';
import 'package:jwellflutter/day_proder/viewmodel/user_viewmodel.dart';
import 'package:jwellflutter/day_proder/viewmodel/viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (context) => RYConterViewModel()),
  ChangeNotifierProvider(
      create: (context) => RYUserViewModel(UserInfo("Ryan", 20, "abc"))),

];