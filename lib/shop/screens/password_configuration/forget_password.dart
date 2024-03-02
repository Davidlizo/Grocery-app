import 'package:ego_supermart/shop/screens/password_configuration/reset_password.dart';
import 'package:ego_supermart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(MTexts.ForgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 15.0,),
            Text(MTexts.ForgetPasswordSubtitle,style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: 32.0 *2,),

            //Text field
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',prefixIcon: Icon(Iconsax.direct_right)
              ),
            ),
            const SizedBox(height: 32.0,),

            // Submit Button
            SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Get.off(() => const ResetPassword()),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade400),
            child: Text(
              MTexts.submit,
              style: GoogleFonts.montserrat(
                color: Colors.white,
              ),
            ),
          ),
        ),
          ],
        ),
        ),
    );
  }
}