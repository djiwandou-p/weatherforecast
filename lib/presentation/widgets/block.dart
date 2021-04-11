import 'package:flutter/material.dart';

class Block extends StatelessWidget {
  final EdgeInsets padding;
  final EdgeInsets margin;
  final double height;
  final double width;
  final BorderRadius borderRadius;
  Block({this.padding, this.margin, this.height, this.width, this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: borderRadius,
      ),
    );
  }
}
