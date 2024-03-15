import 'package:appbangiay/common/styles/spacing_styles.dart';
// import 'package:appbangiay/common/widgets/form_divider.dart';
import 'package:appbangiay/common/widgets/login_signup/form_divider.dart';
import 'package:appbangiay/common/widgets/login_signup/social_buttons.dart';
// import 'package:appbangiay/common/widgets/social_buttons.dart';
import 'package:appbangiay/features/authentication/screens/login/widgets/login_from.dart';
import 'package:appbangiay/features/authentication/screens/login/widgets/login_header.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: HSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              
              //logo,title va sub-title HLoginHeader
              const HLoginHeader(),

              //Form cho nhap du lieu HLoginForm
              const HLoginForm(),

              //DIVIDER HFormDivider
              HFormDivider(dividerText: HTexts.orSignInWith.capitalize!),
              const SizedBox(height: HSizes.spaceBtwSections),

              //footer HSocialButtons
              const HSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}







