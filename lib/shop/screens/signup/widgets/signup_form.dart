import 'package:ego_supermart/shop/screens/signup/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import 'terms_conditions_checkbox.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        // First & Last Name
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: 'First Name',
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: 'Last Name',
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16.0,
        ),

        //username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: 'Username', prefixIcon: Icon(Iconsax.user_edit)),
        ),

        //Email
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Email', prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(
          height: 16.0,
        ),

        //Phone Number
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'PhoneNo', prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(
          height: 16.0,
        ),

        //password
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password',
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye_slash),
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),

        //Terms&Condition Checkbox
        const TermsAndConditionCheckbox(),
        const SizedBox(
          height: 24.0,
        ),

        // Sign Up Button
        SizedBox(
          width: double.infinity,
          height: 46.0,
          child: ElevatedButton(
            onPressed: () => Get.to(() => const VerifyEmailScreen()),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade400),
            child: Text(
              'Create Account',
              style: GoogleFonts.montserrat(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
