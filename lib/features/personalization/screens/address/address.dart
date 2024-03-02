import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'package:ego_supermart/common/widgets/appbar/appbar.dart';
import 'package:ego_supermart/features/personalization/screens/address/add_newaddress.dart';
import 'package:ego_supermart/features/personalization/screens/address/widgets/single_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () => Get.to(() => const AddNewAddressScreen()),
      backgroundColor: Colors.green,
      child: const Icon(Iconsax.add, color: Colors.white,),
      ),
      appBar: MAppBar(
        showBackArrow: true,
        title: Text('Addresses', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: [
              MSingleAddress(selectedAddress: false),
              MSingleAddress(selectedAddress: true),
            ],
          ),
          ),
      ),
    );
  }
}