import 'package:appbangiay/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:appbangiay/common/widgets/images/h_circular_image.dart';
import 'package:appbangiay/common/widgets/texts/h_brand_title_text_with_verified_icon.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/enums.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class HBrandCard extends StatelessWidget {
  const HBrandCard({
    super.key, 
    required this.showBorder, 
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark= HHelperFunctions.isDarkMode(context);
    
    return GestureDetector(
     onTap: onTap,
     //container design
    child: HRoundedContainer(
    padding: const EdgeInsets.all(HSizes.sm),
    showBorder: showBorder,
    backgroundColor: Colors.transparent,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        
        //icon 
        Flexible(
          child: HCircularImage(
            isNetworkImage: false,
            image: HImages.clothIcon,
            backgroundColor: Colors.transparent,
            overlayColor: isDark ? HColors.white: HColors.black,
          ),
        ),
        const SizedBox(width: HSizes.spaceBtwItems / 2),
                         
        //text
         Expanded(
           child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const HBrandTitleWithVerifiedIcon(title: 'Nike',brandTextSize: TextSizes.large),
              Text(
                'Nội dung dài...',
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelMedium,
              )
            ],
          ),
         ),
                         
      ],
    ),
   ),
  );
  }
}
