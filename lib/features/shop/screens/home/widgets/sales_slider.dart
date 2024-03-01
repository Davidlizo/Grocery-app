import 'package:carousel_slider/carousel_slider.dart';
import 'package:ego_supermart/features/shop/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../components/containers/circular_container.dart';
import '../../../../../common/images/m_sales_image.dart';
import '../../../../../utils/constants/image_strings.dart';

class MSalesSlider extends StatelessWidget {
  const MSalesSlider({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items: const [
            MSalesImage(
              imageUrl1: MImages.salesBanner1,
              imageUrl2: MImages.promoBanner1,
            ),
            MSalesImage(
              imageUrl1: MImages.salesBanner1,
              imageUrl2: MImages.promoBanner2,
            ),
            MSalesImage(
              imageUrl1: MImages.salesBanner1,
              imageUrl2: MImages.promoBanner3,
            ),
          ],
        ),
        const SizedBox(
          height: 16.0,
        ),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < 3; i++)
                MCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? Colors.green
                        : Colors.grey),
            ],
          ),
        ),
      ],
    );
  }
}
