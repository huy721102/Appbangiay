import 'package:appbangiay/common/styles/spacing_styles.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/constants/text_strings.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

final String image,title, subTitle;
final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: HSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              //image
              Image(image:  AssetImage(image), width: HHelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: HSizes.spaceBtwSections),

              //title va subtitle
              Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
              const SizedBox(height: HSizes.spaceBtwItems),
              Text(subTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
              const SizedBox(height:HSizes.spaceBtwSections),

              //buttons
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: onPressed,child: const Text(HTexts.tContinue))),
            ],
          ),
        ),
      ),
    );
  }
}