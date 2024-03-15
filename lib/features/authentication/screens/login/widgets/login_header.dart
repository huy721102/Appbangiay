import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class HLoginHeader extends StatelessWidget {
  const HLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          height: 200,
          width: 400,
          image: AssetImage( HImages.logo2),
        ),
        Text(HTexts.loginTitle,style: Theme.of(context).textTheme.headlineMedium),
         const SizedBox(height: HSizes.sm),
        Text(HTexts.loginSubTitle,style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}