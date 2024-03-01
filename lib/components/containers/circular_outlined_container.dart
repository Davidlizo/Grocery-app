import 'package:flutter/material.dart';

class MCircularOutlinedContainer extends StatelessWidget {
  const MCircularOutlinedContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}