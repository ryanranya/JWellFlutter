import 'package:flutter/material.dart';
import 'package:jwellflutter/api/home_request.dart';
import 'package:jwellflutter/douban/model/home_model.dart';
import 'package:jwellflutter/douban/pages/home/home_movie_item/home_movie_item.dart';

class RYDBHomePageContent extends StatefulWidget {
  @override
  _RYDBHomePageContentState createState() => _RYDBHomePageContentState();
}

class _RYDBHomePageContentState extends State<RYDBHomePageContent> {
  final List<MovieItem> movies = [];

  @override
  void initState() {
    // TODO: implement initState
//     发送网络请求
    HomeRequest.requestMoveList(0).then((res) {
      setState(() {
        movies.addAll(res);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (BuildContext cts, int index) {
             return RYHomeMovieItem(movies[index]);
      },
    ));
  }
}
