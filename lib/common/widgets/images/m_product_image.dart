import 'package:flutter/material.dart';

import '../../../utils/helpers/helper_functions.dart';

class MProductImage extends StatelessWidget {
  const MProductImage({
    super.key,
    required this.imageUrl,
    this.isNetworkImage = false,
    this.onPressed,
    this.fit = BoxFit.cover,
    this.height = 170,
    this.width = 125,
    this.borderRadius = 13.0,
    this.padding,
  });

  final double? width, height;
  final EdgeInsetsGeometry? padding;
  final String imageUrl;
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
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Row(
          children: [
            Image(
              width: MHelperFunctions.screenWidth() * 0.3,
              image: isNetworkImage
                  ? NetworkImage(imageUrl)
                  : AssetImage(imageUrl) as ImageProvider,
              fit: fit,
            ),
          ],
        ),
      ),
    );
  }
}