import 'package:ego_supermart/common/styles/shadows.dart';
import 'package:ego_supermart/common/widgets/texts/Product_title_text.dart';
import 'package:ego_supermart/components/containers/rounded_container.dart';
import 'package:ego_supermart/shop/screens/product_details/product_detail.dart';
import 'package:ego_supermart/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../icons/m_circular_icon.dart';
import '../../images/m_product_image.dart';
import '../../widgets/texts/product_price_text.dart';

class MProductCardVertical extends StatelessWidget {
  const MProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    // this container with paddings, color, edges, radius and shadow
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()) ,
      child: Container(
        // width: 9,
        height: 50,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [MShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.white,
        ),
        child: Column(
          children: [
            // Thumbnail, Discount Tag
            MRoundedContainer(
              width: 150 * 2,
              height: 180,
              padding: const EdgeInsets.all(8.0),
              backgroundColor: Colors.grey.shade200,
              child: Stack(
                children: [
                  // Thumbnail image
                  const Positioned(
                    right: 10,
                    child: MProductImage(
                      imageUrl: MImages.productImage2,
                    ),
                  ),

                  // Sales Tag
                  Positioned(
                    top: 7,
                    child: MRoundedContainer(
                      radius: 12.0,
                      backgroundColor: Colors.yellow.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: Colors.black),
                      ),
                    ),
                  ),
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: MCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 16.0 / 2,
            ),

            //Details
             Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MProductTitleText(
                    title: 'Kirkland Canola Oil',
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: 16.0 / 2,
                  ),
                Row(
                  children: [
                    Text('Kirland', overflow: TextOverflow.ellipsis,maxLines: 1, style:Theme.of(context).textTheme.labelMedium),
                    const SizedBox(width: 4.0,),
                    const Icon(Iconsax.verify5, color: Colors.blue, size: 8.0,)
                  ],
                )
                ],
              ),
            ),

            // Spacer here to keep the height of each box same in case 1 or 2 lines of headings
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 4.0),
                  child: MProductPriceText(
                    price: '45.0',
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(16.0),
                      )),
                  child: const SizedBox(
                      width: 32 * 1.2,
                      height: 32 * 1.2,
                      child: Icon(
                        Iconsax.add,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
