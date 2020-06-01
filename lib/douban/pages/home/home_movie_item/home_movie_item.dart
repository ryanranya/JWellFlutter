import 'package:flutter/material.dart';
import 'package:jwellflutter/douban/model/home_model.dart';
import 'package:jwellflutter/douban/until/log.dart';
import 'package:jwellflutter/douban/widget/dashed_line.dart';
import 'package:jwellflutter/douban/widget/star_rating.dart';

class RYHomeMovieItem extends StatelessWidget {
  final MovieItem movie;

  RYHomeMovieItem(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 8, color: Color(0xffdddddd))),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          bulidHeader(),
          SizedBox(height: 8),
          bulidContent(),
          SizedBox(height: 8),
          bulidFooter(),
        ],
      ),
    );
  }

  //1、头部排名
  Widget bulidHeader() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Color.fromARGB(255, 238, 205, 144),
      ),
      child: Text(
        "No.${movie.rank}",
        style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 131, 95, 36)),
      ),
    );
  }

//  2、内容布局
  Widget bulidContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        bulidContentImage(),
        SizedBox(width: 8),
       Expanded(
         child: IntrinsicHeight(
           child: Row(
             children: <Widget>[
               bulidContentInfo(),
               SizedBox(width: 8),
               bulidContentLine(),
               SizedBox(width: 8),
               bulidContentWish()
             ],
           ),
         ),
       )
      ],
    );
  }

//  2.1设置圆角
  Widget bulidContentImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        movie.imageURL,
        height: 150,
      ),
    );
  }

//  2.2信息
  Widget bulidContentInfo() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          bulidContentInfoTitle(),
          SizedBox(height: 8),
          bulidContentInfoRate(),
          SizedBox(
            height: 8,
          ),
          bulidContentInfoDesc(),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }

//  2.2.1 是指titleLabel
  Widget bulidContentInfoTitle() {
    List<InlineSpan> spans = [];
    JWLog("asdasdasd", StackTrace.current);
    return Text.rich(
      TextSpan(children: [
        WidgetSpan(
          baseline: TextBaseline.ideographic,
          alignment: PlaceholderAlignment.middle,
          child: Icon(
            Icons.play_circle_outline,
            color: Colors.redAccent,
            size: 24,
          ),
        ),
        ...movie.title.runes.map((rune) {
          return WidgetSpan(
              child: Text(
                String.fromCharCode(rune),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              alignment: PlaceholderAlignment.middle);
        }).toList(),
        WidgetSpan(
          alignment: PlaceholderAlignment.bottom,
          child: Text("(${movie.playDate})"),
          style: TextStyle(fontSize: 16, color: Colors.grey),
        )
      ]),
    );
  }

//  2.2.2 评分
  Widget bulidContentInfoRate() {
    return Row(
      children: <Widget>[
        RYStarRating(
          rating: movie.rating,
          size: 20,
        ),
        Text(
          "${movie.rating}",
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }

//  2.2.3 描述
  Widget bulidContentInfoDesc() {
//    1.拼接
    final genresString = movie.genres.join(" ");
    final directorSting = movie.director.name;
    final actorString = movie.casts.map((item) => item.name).join(" ");
    final desc = "$genresString / $directorSting / $actorString";
    return Text(
      desc,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 16),
    );
  }

//  2.3虚线分割
  Widget bulidContentLine() {
    return Container(
      height: 100,
      child: RYDashedLine(
        axis: Axis.vertical,
        dashedWidth: .5,
        dashedheight: 6,
        count: 10,
        color: Colors.pink,
      ),
    );
  }

//  2.4想看
  Widget bulidContentWish() {
    return Container(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "assets/images/home/wish.png",
            height: 30,
          ),
          Text(
            "想看",
            style: TextStyle(
                fontSize: 18, color: Color.fromARGB(255, 235, 170, 60)),
          ),
        ],
      ),
    );
  }

//  3、尾部布局
  Widget bulidFooter() {
    return Container(
      padding: EdgeInsets.all(8),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xfff2f2f2),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        movie.originalTitle,
        style: TextStyle(fontSize: 17, color: Color(0xff666666)),
      ),
    );
  }
}
