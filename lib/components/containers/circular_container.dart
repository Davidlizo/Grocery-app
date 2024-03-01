import 'package:flutter/material.dart';

class MCircularContainer extends StatelessWidget {
  const MCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    required this.backgroundColor,
    this.radius = 400,
    this.margin,
    this.padding = 0,
    this.child,
  });

  final double? width;
  final double? height;
  final Color backgroundColor;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
