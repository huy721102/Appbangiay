import 'package:appbangiay/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HSingleAddress extends StatelessWidget {
  const HSingleAddress({
    super.key, 
    required this.selecedAddress,
    });

  final bool selecedAddress;

  @override
  Widget build(BuildContext context) {
    final dark =HHelperFunctions.isDarkMode(context);
    return  HRoundedContainer(
      width: double.infinity,
      padding: const EdgeInsets.all(HSizes.md),
      showBorder: true,
      backgroundColor: selecedAddress ? HColors.primary.withOpacity(0.5):Colors.transparent,
      borderColor: selecedAddress 
      ? Colors.transparent
      : dark
      ? HColors.darkerGrey
      : HColors.grey,
      margin: const EdgeInsets.only(bottom: HSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
             selecedAddress ? Iconsax.tick_circle5: null,
             color: selecedAddress
             ? dark
             ?HColors.light
             :HColors.dark.withOpacity(0.6)
             :null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Huy pham',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: HSizes.sm/2),
              const Text('(+123) 456 0973',maxLines: 1,overflow: TextOverflow.ellipsis),
              const SizedBox(height: HSizes.sm/2),
              const Text('828 su van hanh,quan 10,tpHCM,VIETNAM',softWrap: true),
            ],
          ),
        ],
      ),
    );
  }
}