import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/products/cart/cart_menu_icon.dart';

class MHomeAppBar extends StatelessWidget {
  const MHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MAppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Text(
              "Hello There,",
              style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: Colors.black,
                  ),
            ),
            Text(
              "David Painter",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: Colors.black),
            ),
          ],
        ),
        actions: [MCartCounterIcon(onPressed: () {},iconColor: Colors.black,)],
      ),
    );
  }
}