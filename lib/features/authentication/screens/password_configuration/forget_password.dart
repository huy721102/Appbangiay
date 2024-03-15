import 'package:appbangiay/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Padding(
        padding: const EdgeInsets.all(HSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //headings
            Text(HTexts.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: HSizes.spaceBtwItems),
            Text(HTexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: HSizes.spaceBtwSections*2),

            //text field
            TextFormField(
              decoration: const InputDecoration(labelText: HTexts.email,prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: HSizes.spaceBtwSections),

            //submit button
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=>const RessetPassword()), child: const Text(HTexts.submit)))

          ],
        ),
        ),
    );
  }
}