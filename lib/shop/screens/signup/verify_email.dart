import 'package:ego_supermart/common/widgets/success_screen/success_screen.dart';
import 'package:ego_supermart/utils/constants/image_strings.dart';
import 'package:ego_supermart/utils/constants/text_strings.dart';
import 'package:ego_supermart/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../login/login.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        // padding to Give Default Equal Space on all sides in all Screens.
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              // Image
              Image(image: const AssetImage(MImages.deliveredEmailillustration), width: MHelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: 32.0,),

              // Title & Subtitle
              Text('Verify Your email address!',style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: 16.0,),
              Text('davidpainter421@gmail.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: 16.0,),
              Text(MTexts.confirmedEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: 32.0,),
              // Buttons
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const SuccessScreen( image: MImages.staticsuccessillustration,title: MTexts.createdAccountTitle, subtitle: MTexts.createdAccountSubtitle,),), style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade400),
            child: Text(
              MTexts.Continue,
              style: GoogleFonts.montserrat(
                color: Colors.white,
              ),
            ),),),
              const SizedBox(height: 16.0,),
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white),
            child: Text(
              MTexts.resendEmail,
              style: GoogleFonts.montserrat(
                color: Colors.green.shade400,
              ),
            ),),),
            ],
          ),
          ),
      ),
    );
  }
}