import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({
    super.key,
    required this.imagePath,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}
