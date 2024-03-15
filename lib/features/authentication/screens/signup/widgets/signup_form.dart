import 'package:appbangiay/features/authentication/screens/login/login.dart';
import 'package:appbangiay/features/authentication/screens/signup/verify_email.dart';
import 'package:appbangiay/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/text_strings.dart';

class HSignupForm extends StatelessWidget {
  const HSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: HTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: HSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: HTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: HSizes.spaceBtwInputFields),
          //username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: HTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: HSizes.spaceBtwInputFields),
          //ngay sinh
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: HTexts.birtday,
              prefixIcon: Icon(Iconsax.calendar),
            ),
          ),
          const SizedBox(height: HSizes.spaceBtwInputFields),
          //email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: HTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: HSizes.spaceBtwInputFields),
          //phone number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: HTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: HSizes.spaceBtwInputFields),
          //password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: HTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: HSizes.spaceBtwInputFields),
          //password nhập lại
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: HTexts.password2,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: HSizes.spaceBtwSections),
          //terms&conditions checkbox HTermsAndConditionCheckbox
          const HTermsAndConditionCheckbox(),
          const SizedBox(height: HSizes.spaceBtwSections),
          //sign up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(HColors.primary), // Đổi màu nền của nút
      // Bạn cũng có thể thay đổi các thuộc tính khác như textColor, overlayColor, và nhiều hơn nữa.
      side: MaterialStateProperty.all<BorderSide>(
        const BorderSide(color: Colors.white), // Màu của border
      ),
    ),
              child: const Text(HTexts.createAccount),
            ),
          ),
          const SizedBox(height: HSizes.spaceBtwSections),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Bạn đã có tài khoản? ",
                style: TextStyle(color: Colors.grey),
              ),
              TextButton(
                onPressed: () { Get.to(() => const LoginScreen());
                  // Thực hiện chức năng khi nhấn vào nút Đăng nhập
                },
                child: const Text(
                  "Đăng nhập",
                  style: TextStyle(color: HColors.black,fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
