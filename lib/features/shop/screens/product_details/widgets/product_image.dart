import 'package:ego_supermart/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/icons/m_circular_icon.dart';
import '../../../../../utils/constants/image_strings.dart';

class MProductImage extends StatelessWidget {
  const MProductImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MCurvedEdgeWidget(
      child: Container(
        color: Colors.grey.shade200,
        child: const Stack(
          children: [
            SizedBox(
                height: 300,
                child: Padding(
                  padding: EdgeInsets.all(16.0 * 2),
                  child: Center(
                      child: Image(
                          image: AssetImage(MImages.promoBanner3))),
                )),
    
            // 1 AppBar
            MAppBar(
                showBackArrow: true,
                actions: [
                  MCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  )
                ]),
          ],
        ),
      ),
    );
  }
}