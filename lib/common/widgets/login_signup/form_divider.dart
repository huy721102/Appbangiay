import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/text_strings.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import '../../utils/constants/colors.dart';

class HFormDivider extends StatelessWidget {
  const HFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark=HHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? HColors.darkGrey:HColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
        Text(HTexts.orSignInWith.capitalize!,style: Theme.of(context).textTheme.labelMedium),
        Flexible(child: Divider(color: dark ? HColors.darkGrey:HColors.grey, thickness: 0.5, indent: 5, endIndent: 60)),
      ],
    );
  }
}