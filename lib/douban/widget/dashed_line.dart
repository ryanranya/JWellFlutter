import 'package:flutter/material.dart';

class RYDashedLine extends StatelessWidget {
  final Axis axis;
  final double dashedWidth;
  final double dashedheight;
  final int count;
  final Color color;

  RYDashedLine({
    this.axis = Axis.horizontal,
    this.dashedWidth = 1,
    this.dashedheight = 1,
    this.count = 10,
    this.color = Colors.blueAccent,
  });

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: axis,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(count, (_) {
        return SizedBox(
          width: dashedWidth,
          height: dashedheight,
          child: DecoratedBox(
              decoration: BoxDecoration(
                color: color,
              )),
        );
      }),
    );
  }
}