import 'package:ego_supermart/components/containers/primary_header_container.dart';
import 'package:ego_supermart/common/widgets/appbar/appbar.dart';
import 'package:ego_supermart/common/widgets/texts/section_heading.dart';
import 'package:ego_supermart/features/personalization/screens/address/address.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tiles/settings_menu_tile.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          //header
          MPrimaryHeaderContainer(
            child: Column(
              children: [
                MAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),

                //user profile card
                const MUserProfileTile(),
                const SizedBox(
                  height: 32.0,
                ),
              ],
            ),
          ),

          //-- body
            Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                //Account Settings
                 const MSectionHeading(title: 'Account Settings',showActionButton: false,),
                 const SizedBox(
                  height: 32.0,
                ),

                MSettingsMenuTile(icon: Iconsax.safe_home,title: 'My Address',subtitle: 'Set shopping delivery address',onTap: () => Get.to(() => const UserAddressScreen())),
                const MSettingsMenuTile(icon: Iconsax.shopping_cart,title: 'My cart',subtitle: 'Add, remove products and move to checkout'),
                const MSettingsMenuTile(icon: Iconsax.bag_tick,title: 'My Orders',subtitle: 'In-progress and Completed Orders'),
                const MSettingsMenuTile(icon: Iconsax.bank,title: 'Bank Account',subtitle: 'Withdraw balance to registered bank account'),
                const MSettingsMenuTile(icon: Iconsax.discount_shape,title: 'My Coupons',subtitle: 'List of all the discounted coupons'),
                const MSettingsMenuTile(icon: Iconsax.notification,title: 'Notifications',subtitle: 'Set any kind of notification message'),
                const MSettingsMenuTile(icon: Iconsax.security_card,title: 'Account Privacy',subtitle: 'Manage data usage and connected accounts'),

                // -- App Settings
                const SizedBox(height: 32.0,),
                const MSectionHeading(title: 'App Settings',showActionButton: false,),
                const SizedBox(height: 14.0,),
                const MSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subtitle: 'Upload Data to your Cloud Firebase'),
                MSettingsMenuTile(
                  icon: Iconsax.location, 
                  title: 'Geolocation', 
                  subtitle: 'Set recommendation based on location',
                  trailing: Switch(activeColor: Colors.green,value: true, onChanged: (value) {}),),

                MSettingsMenuTile(
                  icon: Iconsax.security_user, 
                  title: 'Safe Mode', 
                  subtitle: 'Search result is safe for all ages',
                  trailing: Switch(activeColor: Colors.green,value: false, onChanged: (value) {}),),

                MSettingsMenuTile(
                  icon: Iconsax.image, 
                  title: 'HD Image Quality', 
                  subtitle: 'Set image quality to be seen',
                  trailing: Switch(activeColor: Colors.green,value: false, onChanged: (value) {}),),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
