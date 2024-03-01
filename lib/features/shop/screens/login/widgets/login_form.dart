import 'package:ego_supermart/features/shop/screens/password_configuration/forget_password.dart';
import 'package:ego_supermart/features/shop/screens/signup/signup.dart';
import 'package:ego_supermart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../navigation_menu.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0),
        child: Column(
          children: [
            //Email
            TextFormField(
              style: const TextStyle(color: Colors.green),
              cursorColor: Colors.green,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: 'E-Mail',
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),

            //Password
            TextFormField(
              cursorColor: Colors.green,
              decoration: const InputDecoration(
                hintStyle: TextStyle(color: Colors.green),
                prefixIcon: Icon(Iconsax.password_check),
                labelText: 'Password',
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: 15.0 / 2,
            ),

            // Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember Me
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      activeColor: Colors.green,
                      onChanged: (value) {
                        CheckboxThemeData(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          fillColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.selected)) {
                              return Colors.green;
                            } else {
                              return Colors.transparent;
                            }
                          }),
                        );
                      },
                    ),
                    const Text(
                      'Remember Me',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),

                //Forgot Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(
                    MTexts.ForgetPassword,
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32.0,
            ),

            //Sign In Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const NavigationMenu()),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade400),
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                    ),
                  ),
                )),
            const SizedBox(
              height: 16.0,
            ),

            // Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(const SignupScreen()),
                child: Text(
                  'Create Account',
                  style: GoogleFonts.montserrat(
                      color: Colors.green.shade400,
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
