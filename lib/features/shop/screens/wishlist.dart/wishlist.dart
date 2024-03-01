import 'package:ego_supermart/common/icons/m_circular_icon.dart';
import 'package:ego_supermart/common/products/product_cards/product_cards_vertical.dart';
import 'package:ego_supermart/common/widgets/appbar/appbar.dart';
import 'package:ego_supermart/common/widgets/layouts/grid_layout.dart';
import 'package:ego_supermart/features/shop/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        title: Text(
          'WishList',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          MCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              MGridLayout(
                  itemCount: 6,
                  itemBuilder: (_, index) => const MProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
