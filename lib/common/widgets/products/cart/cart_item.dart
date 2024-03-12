import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../images/m_circular_image.dart';
import '../../texts/Product_title_text.dart';

class MCartItem extends StatelessWidget {
  const MCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // image
        const MCircularImage(
          image: MImages.productImage3,
          width: 60,
          height: 60,
          padding: 8.0,
          backgroundColor: Color.fromARGB(255, 242, 238, 238),
        ),
        const SizedBox(
          width: 16.0,
        ),
    
        // Title, Price, & Size
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Kirland',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.labelMedium),
                const SizedBox(
                  width: 4.0,
                ),
                const Icon(
                  Iconsax.verify5,
                  color: Colors.blue,
                  size: 8.0,
                ),
              ],
            ),
            const MProductTitleText(title: 'Peak Full-Cream Refill',maxLines: 1,),
            //Attributes
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'Size: ', style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: '500ml', style: Theme.of(context).textTheme.bodyLarge),
                ]
              )
            )
          ],
        ),
      ],
    );
  }
}