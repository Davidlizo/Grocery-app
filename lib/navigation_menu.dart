import 'package:ego_supermart/shop/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/personalization/screens/settings/settings.dart';
import 'shop/screens/store/store.dart';
import 'shop/screens/wishlist.dart/wishlist.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    // instance of the NavigtionController
    final controller = Get.put(NavigtionController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: Colors.white.withOpacity(0.1),
          indicatorColor: Colors.green.withOpacity(0.1),
        
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.menu), label: 'order'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'profile'),
          ],
          ),
      ),
        body: Obx(
          () => controller.screens[
            controller.selectedIndex.value
          ],
        ),
    );
  }
}

class NavigtionController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [const HomeScreen(), const StoreScreen(),const FavouriteScreen(),const SettingsScreen()];
}