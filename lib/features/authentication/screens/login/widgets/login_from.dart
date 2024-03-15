// import 'package:appbangiay/features/authentication/screens/signup.widgets/signup.dart';
import 'package:appbangiay/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:appbangiay/features/authentication/screens/signup/signup.dart';
import 'package:appbangiay/navigation_menu.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class HLoginForm extends StatelessWidget {
  const HLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: HSizes.spaceBtnSections),
        child: Column(
         children: [
          //email
           TextFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right),labelText: HTexts.email),
           ),
           const SizedBox(height: HSizes.spaceBtwInputFields),
        
          //password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: HTexts.password, 
              suffixIcon: Icon(Iconsax.eye_slash),
              ),
           ),
           const SizedBox(height: HSizes.spaceBtwInputFields / 2),
        
           ///rember me va quen password
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //remember me 
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value){},activeColor: HColors.primary,),
                  const Text(HTexts.rememberMe),
                ],
              ),
        
        
              // quen mat khau
              TextButton(onPressed: ()=>Get.to(()=>const ForgetPassword()), child: const Text(HTexts.forgetPassword)),
            ],
           ),
           const SizedBox(height: HSizes.spaceBtwSections),
        
           //sigin in button
        
            SizedBox(
       width: double.infinity,
           child: ElevatedButton(
    onPressed: () => Get.to(() => const NavigationMenu()),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(HColors.primary), // Đổi màu nền của nút
      // Bạn cũng có thể thay đổi các thuộc tính khác như textColor, overlayColor, và nhiều hơn nữa.
      side: MaterialStateProperty.all<BorderSide>(
        const BorderSide(color: Colors.white), // Màu của border
      ),
    ),
    child: const Text(HTexts.signIn),
  ),
),

            const SizedBox(height: HSizes.spaceBtwItems),
           //create account button
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Bạn chưa có tài khoản? ",
                style: TextStyle(color: Colors.grey),
              ),
              TextButton(
                onPressed: () { Get.to(() => const SignupScreen());
                  // Thực hiện chức năng khi nhấn vào nút Đăng nhập
                },
                child: const Text(
                  "Đăng ký",
                  style: TextStyle(color: HColors.black,fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
         ],
                      ),
      ),
    );
  }
}