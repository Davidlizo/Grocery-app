import 'package:flutter/material.dart';

import '../../utils/helpers/helper_functions.dart';

class MSalesImage extends StatelessWidget {
  const MSalesImage({
    super.key,
    required this.imageUrl1,
    required this.imageUrl2,
    this.backgroundColor = const Color.fromARGB(245, 245, 245, 245),
    this.isNetworkImage = false,
    this.onPressed,
    this.fit = BoxFit.contain,
    this.height = 170,
    this.width = double.infinity,
    this.borderRadius = 13.0,
    this.padding,
  });

  final double? width, height;
  final EdgeInsetsGeometry? padding;
  final String imageUrl1;
  final String imageUrl2;
  final Color? backgroundColor;
  final BoxFit? fit;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: padding,
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              width: MHelperFunctions.screenWidth() * 0.4,
              image: isNetworkImage
                  ? NetworkImage(imageUrl1)
                  : AssetImage(imageUrl1) as ImageProvider,
              fit: fit,
            ),
            Image(
              width: MHelperFunctions.screenWidth() * 0.4,
              image: isNetworkImage
                  ? NetworkImage(imageUrl2)
                  : AssetImage(imageUrl2) as ImageProvider,
              fit: fit,
            ),
          ],
        ),
      ),
    );
  }
}
