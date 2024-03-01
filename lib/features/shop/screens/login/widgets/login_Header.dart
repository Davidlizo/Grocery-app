import 'package:ego_supermart/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          height: 50,
          image: AssetImage(MImages.logo2),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text('Welcome back,',
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          'Discover, Relax And Shop To Your Taste',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}