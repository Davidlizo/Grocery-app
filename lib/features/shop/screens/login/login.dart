import 'package:ego_supermart/common/styles/spacing_styles.dart';
import 'package:flutter/material.dart';


import '../../../../common/widgets/login_signup/Form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import 'widgets/login_Header.dart';
import 'widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title & sub-Title
              LoginHeader(),

              //Form
              LoginForm(),

              //Divider
              FormDivider(),
              SizedBox(height: 32.0,),

              //Footer
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}








