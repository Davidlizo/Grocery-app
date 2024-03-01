import 'package:ego_supermart/common/images/m_circular_image.dart';
import 'package:ego_supermart/common/widgets/texts/section_heading.dart';
import 'package:ego_supermart/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import 'widgets/proflie_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      // -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: [
              //Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    MCircularImage(
                      image: MImages.profile,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Change Profile Picture',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ),

              //Details
              const SizedBox(
                height: 16.0 / 2,
              ),
              const Divider(),
              const SizedBox(
                height: 16.0,
              ),
              const MSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: 16.0,
              ),

              MProfileMenu(
                title: 'Name',
                value: 'First Moblie App',
                onPressed: () {},
              ),
              MProfileMenu(
                title: 'Username',
                value: 'Davidlizo',
                onPressed: () {},
              ),

              const SizedBox(height: 16.0),
              const Divider(),
              const SizedBox(
                height: 16.0,
              ),

              // Heading for Presonal info
              const MSectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: 16.0,
              ),

              MProfileMenu(
                title: 'User ID',
                value: '45697',
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              MProfileMenu(
                title: 'E-mail',
                value: 'davidpainter421@gmail.com',
                onPressed: () {},
              ),
              MProfileMenu(
                title: 'Phone Number',
                value: '+234 09013975249',
                onPressed: () {},
              ),
              MProfileMenu(
                title: 'Gender',
                value: 'Male',
                onPressed: () {},
              ),
              MProfileMenu(
                title: 'Date of Birth',
                value: '17 Jun, 2003',
                onPressed: () {},
              ),
              const Divider(),
              const SizedBox(
                height: 8.0,
              ),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
