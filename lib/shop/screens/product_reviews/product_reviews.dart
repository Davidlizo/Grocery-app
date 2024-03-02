import 'package:ego_supermart/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:flutter/material.dart';

import 'package:ego_supermart/common/widgets/appbar/appbar.dart';
import '../../../common/products/ratings/rating_indicator.dart';
import 'widgets/rating_progress_indicator.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // -- AppBar
      appBar: const MAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),

      // -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Ratings and Reviews are verified and are from people who use the same type of device that you use."),
              const SizedBox(
                height: 16.0,
              ),

              // overall Product Ratings
              const MOverallProductRating(),
              const MRatingBarIndicator(rating: 3.5,),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: 32.0),

              // Userr Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
