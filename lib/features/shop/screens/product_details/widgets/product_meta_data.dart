import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:ego_supermart/common/widgets/texts/Product_title_text.dart';
import 'package:ego_supermart/common/widgets/texts/product_price_text.dart';
import 'package:ego_supermart/components/containers/rounded_container.dart';

class MProductMetaData extends StatelessWidget {
  const MProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price & sale price
        Row(
          children: [
            MRoundedContainer(
              radius: 8.0,
              backgroundColor: Colors.yellow.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.black),),
            ),
            const SizedBox(width: 16.0,),

            // price
            Text('\$850', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough,)),
            const SizedBox(width: 16.0,),
            const MProductPriceText(price: '550', isLarge: true,)
          ],
        ),
        const SizedBox(height: 16.0 / 1.5,),

        //Title
        const MProductTitleText(title: 'Peak Full-Cream Refil'),
        const SizedBox(height: 16.0 / 1.5,),

        // Stock Status
        Row(
          children: [
            const MProductTitleText(title: 'Status'),
            const SizedBox(width: 16.0,),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium!.apply(color: Colors.green),),
          ],
        ),
        const SizedBox(height: 16.0 / 1.5,),

        //Brand
         Row(
          children: [
            Text('Kirland', overflow: TextOverflow.ellipsis,maxLines: 1, style:Theme.of(context).textTheme.labelMedium),
            const SizedBox(width: 4.0,),
            const Icon(Iconsax.verify5, color: Colors.blue, size: 8.0,)
          ],
        ),
      ],
    );
  }
}
