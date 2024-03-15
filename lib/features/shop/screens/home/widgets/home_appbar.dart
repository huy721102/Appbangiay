import 'package:appbangiay/common/widgets/appbar/appbar.dart';
import 'package:appbangiay/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class HHomeAppBar extends StatelessWidget {
  const HHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HAppBar( title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(HTexts.homeAppbarTitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: HColors.grey)),
        Text(HTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: HColors.white)),
    
      ],
    ),
    actions: [HCartCounterIcon(onPressed: () {}, iconColor: HColors.white,counterBgColor: HColors.black,counterTextColor: HColors.white)],
    );
  }
}