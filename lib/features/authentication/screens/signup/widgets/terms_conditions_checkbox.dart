import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/constants/text_strings.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class HTermsAndConditionCheckbox extends StatelessWidget {
  const HTermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
  final dark = HHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(width: 24,height: 24,child:   Checkbox(value: true, onChanged: (value){},activeColor: HColors.primary), ),
        const SizedBox(width: HSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
        children: [
          TextSpan(text: '${HTexts.iAgreeTo} ',style: Theme.of(context).textTheme.bodySmall),
          TextSpan(text: '${HTexts.privacyPolicy} ',style: Theme.of(context).textTheme.bodyMedium!.apply(
            color: dark ? HColors.white:HColors.primary,
            decoration: TextDecoration.underline,
            decorationColor: dark ? HColors.white: HColors.primary,
          )),
          //cho ma '${HTexts.privacyPolicy} ' la lam khoang cach
          TextSpan(text: '${HTexts.and} ',style: Theme.of(context).textTheme.bodySmall),
          TextSpan(text: HTexts.termsOfUse,style: Theme.of(context).textTheme.bodyMedium!.apply(
            color: dark ? HColors.white:HColors.primary,
            decoration: TextDecoration.underline,
            decorationColor: dark ? HColors.white: HColors.primary,
          )),
        ]),
        ),
      ],
    );
  }
}