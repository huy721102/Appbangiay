import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/constants/text_strings.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RessetPassword extends StatelessWidget {
  const RessetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(HSizes.defaultSpace),
        child: Column(
          children: [
            //image
              Image(image: const AssetImage(HImages.deliveredEmailIllustration), width: HHelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: HSizes.spaceBtwSections),

              //title va subtitle
              Text(HTexts.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
              const SizedBox(height: HSizes.spaceBtwItems),
              Text(HTexts.changeYourPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
              const SizedBox(height:HSizes.spaceBtwSections),

              //buttons chỉnh các nút quay về
              SizedBox(
                width: double.infinity,child: ElevatedButton(onPressed: (){},child: const Text(HTexts.done)),
                ),
                const SizedBox(height: HSizes.spaceBtwItems),
                SizedBox(
                width: double.infinity,child: TextButton(onPressed: (){},child: const Text(HTexts.resendEmail)),
                ),
              
          ],
        ),
        ),
      ),
    );
  }
}