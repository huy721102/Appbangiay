import 'package:appbangiay/common/widgets/icons/h_circular_icon.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HBottomAddToCart extends StatelessWidget {
  const HBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=HHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: HSizes.defaultSpace,vertical: HSizes.defaultSpace /2),
      
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const HCircularIcon(
                icon:Iconsax.minus,
                backgroundColor: HColors.darkGrey,
                width: 40,
                height: 40,
                color: HColors.white,
                ),

                const SizedBox(width: HSizes.spaceBtwItems),
                Text('2',style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(width: HSizes.spaceBtwItems),

                const HCircularIcon(
                icon:Iconsax.add,
                backgroundColor: HColors.black,
                width: 40,
                height: 40,
                color: HColors.white,
                ),
            ],
          ),
          
        ],
      ),
    );
  }
}