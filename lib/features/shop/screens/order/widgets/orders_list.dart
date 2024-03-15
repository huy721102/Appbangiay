import 'package:appbangiay/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HOrderListItems extends StatelessWidget {
  const HOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 5,
      separatorBuilder: (_, __) => const SizedBox(height: HSizes.spaceBtwItems),
      itemBuilder:(_, index) => HRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(HSizes.md),
        backgroundColor: dark ? HColors.dark:HColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //row 1
            Row(
              children: [
                  //row 1
            const Icon(Iconsax.ship),
            const SizedBox(width: HSizes.spaceBtwItems / 2),
      
            // STATUS VA DATE
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('processing',
                  style: Theme.of(context).textTheme.bodyLarge!.apply(color: HColors.primary,fontWeightDelta: 1),
                  ),
                  Text('06 nov 2024',style: Theme.of(context).textTheme.headlineSmall),
                ],
              ),
            ),
      
            //icon
            IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_3,size: HSizes.iconSm)),
              ],
            ),
            const SizedBox(height: HSizes.spaceBtwItems),
      
            //row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                  //icon
                  const Icon(Iconsax.ship),
                  const SizedBox(width: HSizes.spaceBtwItems / 2),
                  
                  // STATUS VA DATE
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text('order',style: Theme.of(context).textTheme.labelMedium),
                       Text('[#265f2]',style: Theme.of(context).textTheme.titleMedium),
                      ],
                    ),
                  ),
                              ],
                            ),
                ),
            
                Expanded(
                  child: Row(
                    children: [
                  //icon
                  const Icon(Iconsax.calendar),
                  const SizedBox(width: HSizes.spaceBtwItems / 2),
                  
                  // STATUS VA DATE
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text('shipping date',style: Theme.of(context).textTheme.labelMedium),
                       Text('03 nov 2023',style: Theme.of(context).textTheme.titleMedium),
                      ],
                    ),
                  ),
                              ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}