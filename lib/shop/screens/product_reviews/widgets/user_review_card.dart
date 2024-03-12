import 'package:ego_supermart/common/widgets/products/ratings/rating_indicator.dart';
import 'package:ego_supermart/components/containers/rounded_container.dart';
import 'package:ego_supermart/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(MImages.userProfileImage1)),
                const SizedBox(width: 16.0),
                Text('Angela', style: Theme.of(context).textTheme.titleLarge)
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: 16.0,),

        // Review
        Row(
          children: [
            const MRatingBarIndicator(rating:4),
            const SizedBox(width: 16.0,),
            Text('23 Jun, 2023', style: Theme.of(context).textTheme.bodyMedium),
          ],
          ),
          const SizedBox(height: 16.0,),
          const ReadMoreText(
            'This is such and amazing app to download. I was able to navigate through seamlessly, although i fell they should make the odering process a little bit faster but besides that ths is a really fun app. Great job! ', 
            trimLines: 2,
            trimMode: TrimMode.Line,
            trimExpandedText: 'less',
            trimCollapsedText:'more',
            moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green),
            lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          const SizedBox(height: 16.0,),


          // company Review
          MRoundedContainer(
            backgroundColor: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Dav's Store", style: Theme.of(context).textTheme.titleMedium),
                      Text('24, Jun, 2023', style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                  const SizedBox(height: 16.0,),
                  const ReadMoreText(
                    'This is such and amazing app to download. I was able to navigate through seamlessly, although i fell they should make the odering process a little bit faster but besides that ths is a really fun app. Great job! ', 
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimExpandedText: 'less',
                    trimCollapsedText:'more',
                     moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green),
                ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 32.0,),
        
      ],
    );
  }
}
