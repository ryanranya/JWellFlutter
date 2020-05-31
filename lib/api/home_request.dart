
import 'package:jwellflutter/api/config.dart';
import 'package:jwellflutter/api/http_request.dart';
import 'package:jwellflutter/douban/model/home_model.dart';

class HomeRequest{
  static Future<List<MovieItem>> requestMoveList(int start) async{
//    1、构建网络请求
    final String moveURL = "/movie/top250";
    Map<String, dynamic> parameter;
    parameter = {"start":start,"count":HomeConfig.movieCount};
//  2、发送网络请求拿到结果
    final result = await HttpRequest.getRequest(moveURL,params: parameter);
    final subjects = result["subjects"];
//    3、将 Map 数据转成 Model
    List<MovieItem> movies = [];
  for (var sub in subjects){
    movies.add(MovieItem.fromMap(sub));
  }
  return movies;
  }
}