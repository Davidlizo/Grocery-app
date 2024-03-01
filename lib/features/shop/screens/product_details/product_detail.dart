import 'package:ego_supermart/common/widgets/texts/section_heading.dart';
import 'package:ego_supermart/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:ego_supermart/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'widgets/product_attributes.dart';
import 'widgets/product_image.dart';
import 'widgets/rating_share-widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1 product image
            const MProductImage(),

            // 2 - Product Details
            Padding(
              padding:
                  const EdgeInsets.only(right: 24.0, left: 24.0, bottom: 24.0),
              child: Column(
                children: [
                  // - Rating & Share
                  const MRatingAndShare(),

                  // - price, Title, Stock, Brand
                  const MProductMetaData(),
                  const SizedBox(
                    height: 22.0,
                  ),
                  // - Attributes
                  const MProductAttributes(),
                  const SizedBox(
                    height: 35.0,
                  ),

                  // - Description
                  const MSectionHeading(
                    title: 'Details',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const ReadMoreText(
                    'This is A Product Description for Peak Full-Cream Refil. There are More Things that can be Added but i want to also make it show more and as well show less when i click on the Readmore thingy i just hope it works quite alright.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  // - Reviews
                  const Divider(),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MSectionHeading(
                          title: 'Reviews (199)', showActionButton: false),
                      IconButton(
                        icon: const Icon(Iconsax.arrow_right_3, size: 18),
                        onPressed: () {},
                      )
                    ],
                  ),
                  const SizedBox(height: 32.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
