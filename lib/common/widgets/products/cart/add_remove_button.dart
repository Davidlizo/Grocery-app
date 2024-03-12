import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../icons/m_circular_icon.dart';

class MproductQuantityWithAddRemoveButton extends StatelessWidget {
  const MproductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        MCircularIcon(
          icon: Iconsax.minus,
          width: 40,
          height: 40,
          color: Colors.black,
          backgroundColor: Colors.grey.shade300,
        ),
        const SizedBox(
          width: 16.0,
        ),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: 16.0),
        const MCircularIcon(
          icon: Iconsax.add,
          width: 40,
          height: 40,
          color: Colors.white,
          backgroundColor: Colors.green,
        ),
      ],
    );
  }
}
