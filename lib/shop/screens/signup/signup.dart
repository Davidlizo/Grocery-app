

import 'package:flutter/material.dart';

import '../../../common/widgets/login_signup/Form_divider.dart';
import '../../../common/widgets/login_signup/social_buttons.dart';
import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                'Register With Us Here',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 32.0,
              ),

              //Form
              const SignupForm(),
              const SizedBox(
                height: 16.0,
              ),

              // Divider
              const FormDivider(),
              const SizedBox(
                height: 16.0,
              ),

              // Social Buttons
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}