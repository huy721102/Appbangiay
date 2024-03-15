import 'package:appbangiay/common/widgets/icons/h_circular_icon.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HProductQuantityWithAddRemoveButton extends StatelessWidget {
  const HProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
       mainAxisSize: MainAxisSize.min,
      children: [
        HCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: HSizes.md,
          color: HHelperFunctions.isDarkMode(context) ? HColors.primary: HColors.white,
          backgroundColor: HHelperFunctions.isDarkMode(context) ? HColors.primary: HColors.primary,
          ),
    
            const SizedBox(width: HSizes.spaceBtnItems),
            Text('2',style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(width: HSizes.spaceBtnItems),
    
            const HCircularIcon(
            icon: Iconsax.add,
            width: 32,
           height: 32,
            size: HSizes.md,
             color: HColors.white,
             backgroundColor: HColors.primary,
       ),
      ],
    );
  }
}

