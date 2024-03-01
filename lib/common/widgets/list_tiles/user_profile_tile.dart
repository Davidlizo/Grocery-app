
import 'package:ego_supermart/features/personalization/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/image_strings.dart';

class MUserProfileTile extends StatelessWidget {
  const MUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        child: Image.asset(MImages.user,width: 50,height: 50,fit: BoxFit.contain,),
      ),
      title: Text('David',style: Theme.of(context).textTheme.headlineSmall,),
      subtitle: Text('davidpainter421@gmail.com',style: Theme.of(context).textTheme.bodyMedium,),
      trailing: IconButton(onPressed: () => Get.to(() => const ProfileScreen()), icon: const Icon(Iconsax.edit),color: Colors.black,),
    );
  }
}