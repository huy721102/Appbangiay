// import 'package:appbangiay/common/widgets/form_divider.dart';
import 'package:appbangiay/common/widgets/appbar/appbar.dart';
import 'package:appbangiay/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:appbangiay/common/widgets/login_signup/form_divider.dart';
import 'package:appbangiay/common/widgets/login_signup/social_buttons.dart';
// import 'package:appbangiay/common/widgets/social_buttons.dart';
// import 'package:appbangiay/features/authentication/screens/signup.widgets/signup_form.dart';
import 'package:appbangiay/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SingleChildScrollView(
        // padding: const EdgeInsets.all(HSizes.defaultSpace),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const HPrimaryHeaderContainer(child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
              children: [
               HAppBar(showBackArrow: true),
              SizedBox(
          width: double.infinity, // Sét chiều rộng của SizedBox bằng chiều rộng tối đa của màn hình
          child: Image(
            image: AssetImage(HImages.logo1),
            width:200,
            height: 200,
            fit: BoxFit.contain,
          ),
        ),
                SizedBox(height:HSizes.spaceBtwInputFields),
              ],
            ),
            ),
            
            //title
            Text(HTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: HSizes.spaceBtwSections),

             //form HSignupForm
            const HSignupForm(),
            const SizedBox(height: HSizes.spaceBtwSections),

              //divider
            HFormDivider(dividerText: HTexts.orSignUpWith.capitalize!),
            const SizedBox(height: HSizes.spaceBtwSections),

              //social buttons NÊN COI LẠI DÒNG NÀY CHO ẨN ĐI KO
           const HSocialButtons(),
            // ý nghĩa const SizedBox(height: HSizes.spaceBtwSections), dòng này là khoảng cách trên dưới 
          ],
          ),
      ),
    );
  }
}

