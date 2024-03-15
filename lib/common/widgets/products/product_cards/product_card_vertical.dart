import 'package:appbangiay/common/styles/shadows.dart';
import 'package:appbangiay/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:appbangiay/common/widgets/icons/h_circular_icon.dart';
import 'package:appbangiay/common/widgets/images/h_rounded_image.dart';
import 'package:appbangiay/common/widgets/texts/h_brand_title_text_with_verified_icon.dart';
import 'package:appbangiay/common/widgets/texts/product_price_text.dart';
import 'package:appbangiay/common/widgets/texts/product_title_text.dart';
import 'package:appbangiay/features/shop/screens/product_details/product_detail.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HProductCardVertical extends StatelessWidget {
  const HProductCardVertical({super.key});
  

  @override
  Widget build(BuildContext context) {

   final dark= HHelperFunctions.isDarkMode(context);

    //container with side padding,color,edges, radius and shadow
    return GestureDetector(
      onTap: () => Get.to(()=>const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [HShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(HSizes.productImageRadius),
          color: dark ? HColors.darkGrey:HColors.white,
        ),
        child: Column(
          children: [
            //Thumbnail,wishList button,discount tag
              HRoundedContainer(
                height: 180,
                padding: const EdgeInsets.all(HSizes.sm),
                backgroundColor: dark ? HColors.dark:HColors.light ,
                child: Stack(
                  children: [
                    //thumbnail image
                       const HRoundedImage(imageUrl: HImages.productImage1, applyImageRadius: true),
      
                    //sale tag
                    Positioned(
                      top: 12,
                      child: HRoundedContainer(
                        radius: HSizes.sm,
                        backgroundColor: HColors.secondary.withOpacity(0.8),
                        padding: const EdgeInsets.symmetric(horizontal: HSizes.sm,vertical: HSizes.xs),
                        child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: HColors.black)),
                      ),
                    ),
      
                    //favourite icon button 
                     const Positioned(
                      top: 0,
                      right: 0,
                      child:  HCircularIcon(icon: Iconsax.heart5, color: Colors.red)),
                  ],
                ),
              ),
              const SizedBox(height: HSizes.spaceBtwItems/2),
      
            //details
             const Padding(
              padding: EdgeInsets.only(left: HSizes.sm),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 HProductTitleText(title: 'Giay Nike Air Shoes abc anvac',smallSize: true),
                 SizedBox(height: HSizes.spaceBtwItems/2),
               HBrandTitleWithVerifiedIcon(title: 'Nike'),
                ],
              ),
            ),
            ),

             const Spacer(),
             
             //gia row
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //price gia
               const Padding(
                  padding: EdgeInsets.only(left: HSizes.sm),
                  child:  HProductPriceText(price: '35.0'),
                ),
      
                ///add to cart button
                Container(
                decoration: const BoxDecoration(
                  color: HColors.dark,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(HSizes.cardRadiusMd),
                    bottomRight: Radius.circular(HSizes.productImageRadius),
                  ),
                ),
                child: const SizedBox(
                  width: HSizes.iconLg * 1.2,
                  height: HSizes.iconLg * 1.2,
                  child: Center(child: Icon(Iconsax.add,color: HColors.white)),
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



