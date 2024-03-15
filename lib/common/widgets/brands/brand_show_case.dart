import 'package:appbangiay/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:appbangiay/common/widgets/products/cart/brand_card.dart';
import 'package:appbangiay/utils/constants/colors.dart';
// import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class HBrandShowcase extends StatelessWidget {
  const HBrandShowcase({
    super.key, 
    required this.images,
  });
    
    final List<String> images;

  @override
  Widget build(BuildContext context) {
    return HRoundedContainer(
      showBorder: true,
      borderColor: HColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(HSizes.md),
      margin: const EdgeInsets.only(bottom: HSizes.spaceBtwItems),
      child: Column(
        children: [
          //brand with products count
          const HBrandCard(showBorder: false),
          const SizedBox(height: HSizes.spaceBtwItems),

          //brand top 3 product images
          
           Row(children: images.map((image) => brandTopProductImageWidget(image, context)).toList()),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image,context){
    return Expanded(
      child: HRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(HSizes.md),
        margin: const EdgeInsets.only(right: HSizes.sm),
        backgroundColor: HHelperFunctions.isDarkMode(context)?HColors.darkerGrey:HColors.light,
        child:  Image(fit: BoxFit.contain,image: AssetImage(image)),
      ),
    );
  }
}




