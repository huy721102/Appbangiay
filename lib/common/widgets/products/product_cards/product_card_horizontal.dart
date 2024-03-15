import 'package:appbangiay/common/styles/shadows.dart';
import 'package:appbangiay/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:appbangiay/common/widgets/icons/h_circular_icon.dart';
import 'package:appbangiay/common/widgets/images/h_rounded_image.dart';
import 'package:appbangiay/common/widgets/texts/h_brand_title_text_with_verified_icon.dart';
import 'package:appbangiay/common/widgets/texts/product_price_text.dart';
import 'package:appbangiay/common/widgets/texts/product_title_text.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HProductCardHorizontal extends StatelessWidget {
  const HProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =HHelperFunctions.isDarkMode(context);
    return Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(HSizes.productImageRadius),
          color: dark ? HColors.darkGrey:HColors.softGrey,
        ),
        child: Row(
          children: [
            // thumbnail
            HRoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(HSizes.sm),
              backgroundColor: dark ? HColors.dark : HColors.light,
              child:  Stack(
                children: [
                  //thumbnail image
                  const SizedBox(
                    height: 120,
                    width: 120,
                    child: HRoundedImage(imageUrl: HImages.productImage1,applyImageRadius: true),
                    ),

                    //sale tag
                    Positioned(
                      top: 12,
                      child: HRoundedContainer(
                        radius: HSizes.sm,
                        backgroundColor: HColors.secondary.withOpacity(0.8),
                        padding:  const EdgeInsets.symmetric(horizontal: HSizes.sm,vertical: HSizes.xs),
                        child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: HColors.black)),
                      ),
                    ),

                    //favour icon button
                     const Positioned(
                      top: 0,
                      right: 0,
                      child: HCircularIcon(icon: Iconsax.heart5,color: Colors.red),
                      ),
                ],
              ),
            ),

            //detais
             SizedBox(
              width: 172,
              child: Padding(
               padding: const EdgeInsets.only(top: HSizes.sm,left: HSizes.sm),
                child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HProductTitleText(title: 'green nike half sleeves shirt',smallSize: true),
                      SizedBox(height: HSizes.spaceBtwItems / 2 ),
                      HBrandTitleWithVerifiedIcon(title: 'nike'),
                    ],
                  ),

                  const Spacer(),
                
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //tien
                        const Flexible(child: HProductPriceText(price: '199')),

                        //add to cart
                        Container(
                          decoration: const BoxDecoration(
                            color: HColors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(HSizes.cardRadiusMd),
                              bottomRight: Radius.circular(HSizes.productImageRadius),
                            ),
                          ),
                          child: const SizedBox(
                            width: HSizes.iconLg  * 1.2,
                            height: HSizes.iconLg  * 1.2,
                            child: Center(child: Icon(Iconsax.add,color: HColors.white)),
                          ),
                        ),
                      ],
                    ),
                ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}