import 'package:ego_supermart/common/widgets/texts/Product_title_text.dart';
import 'package:ego_supermart/common/widgets/texts/product_price_text.dart';
import 'package:ego_supermart/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../components/containers/rounded_container.dart';

class MProductAttributes extends StatelessWidget {
  const MProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // selected Attribute Pricing & Discription
      MRoundedContainer(
        padding: const EdgeInsets.all(10.0),
        backgroundColor: Colors.grey.shade100,
        child: Column(
          children: [
            // Title, Price and Stock Stous
            Row(
              children: [
                const MSectionHeading(
                  title: 'Variation',
                  showActionButton: false,
                ),
                const SizedBox(
                  width: 16.0,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Row(children: [
                      const MProductTitleText(
                      title: 'Price : ',
                      smallSize: true,
                    ),

                    /// Actual price
                      Text(
                        '\$25',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .apply(decoration: TextDecoration.lineThrough),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),

                    /// Sale Price
                      const MProductPriceText(price: '20')
                    ],
                    ),

                    // Stock
                    Row(
                      children: [
                        const MProductTitleText(title: 'Stock : ', smallSize: true),
                        Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            // variation Description
            const MProductTitleText(
              title: 'This is the Description of the Product and it can go up to 4 maxlines.',
              smallSize: true,
              maxLines: 4,
              ),
          ],
        ),
      ),
      const SizedBox(height: 16.0,),

      /// --Attributes
      Column(),
    ]);
  }
}
