import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HSocialButtons extends StatelessWidget {
  const HSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: HColors.grey),borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed:() {},
            icon: const Image(
              width: HSizes.iconMd,
              height: HSizes.iconMd,
              image: AssetImage(HImages.google),
            ) ,
          ),
        ),
        const SizedBox(width: HSizes.spaceBtwItems),
         Container(
          decoration: BoxDecoration(border: Border.all(color: HColors.grey),borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed:() {},
            icon: const Image(
              width: HSizes.iconMd,
              height: HSizes.iconMd,
              image: AssetImage(HImages.facebook),
            ) ,
          ),
        ),
      ],
    );
  }
}