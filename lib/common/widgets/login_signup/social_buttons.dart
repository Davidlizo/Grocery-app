import 'package:flutter/material.dart';

import '../../../utils/constants/image_strings.dart';


class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: 24.0,
              height: 24.0,
              image: AssetImage(MImages.google),
            ),
          ),
        ),
        const SizedBox(
          width: 16.0,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: 24.0,
                  height: 24.0,
                  image: AssetImage(MImages.facebook))),
        ),
      ],
    );
  }
}
