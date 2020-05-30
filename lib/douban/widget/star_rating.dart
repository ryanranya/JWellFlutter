import 'package:flutter/material.dart';

class RYStarRating extends StatefulWidget {
  final double rating; //分数
  final double maxRating; //最大分数/满分
  final int count; //星星个数
  final double size; //占据大小
  final Color unselectColor; //未选中颜色
  final Color selectColor; //选择颜色
  final Widget unselectImage; //未选择图片
  final Widget selectImage; //选中图片

  RYStarRating(
      {@required this.rating,
        this.maxRating = 10,
        this.count = 5,
        this.size = 30,
        this.unselectColor = const Color(0xffbbbbbb),
        this.selectColor = const Color(0xffff0000),
        Widget unselectImage,
        Widget selectImage
      })
      :unselectImage = unselectImage ??
      Icon(Icons.star_border, color: unselectColor, size: size,),
        selectImage = selectImage ?? Icon(Icons.star, color: selectColor, size: size);
  @override
  _RYStarRatingState createState() => _RYStarRatingState();
}

class _RYStarRatingState extends State<RYStarRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          children: buildUnselectedStar(),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: buildSelectedStar(),
        )
      ],
    );
  }

  List<Widget> buildUnselectedStar() {
    return List.generate(widget.count, (index) {
      return widget.unselectImage;
    });
  }

  List<Widget> buildSelectedStar() {
//    1、创建stars
    List<Widget> stars = [];
    final star = widget.selectImage;
//  2、构建满填充的star
    double oneValue = widget.maxRating / widget.count;
    int entireCount = (widget.rating / oneValue).floor();
    for (var i = 0; i < entireCount; i++) {
      stars.add(star);
    }
//  3、构建部分填充star
//    ClipRect  裁剪
    double leftwidth = ((widget.rating / oneValue) - entireCount) * widget.size;
    final halfStar = ClipRect(
      clipper: RYStarClipper(leftwidth),
      child: star,
    );
    stars.add(halfStar);

    if (stars.length > widget.count){
      return stars.sublist(0,widget.count);
    }
    return stars;
  }
}

//自定义
class RYStarClipper extends CustomClipper<Rect> {
  double width;

  RYStarClipper(this.width);

  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(RYStarClipper oldClipper) {
    // TODO: implement shouldReclip
    return oldClipper.width != this.width;
  }
}
