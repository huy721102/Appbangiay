import 'package:appbangiay/common/widgets/appbar/appbar.dart';
import 'package:appbangiay/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:appbangiay/common/widgets/icons/h_circular_icon.dart';
import 'package:appbangiay/common/widgets/images/h_rounded_image.dart';
import 'package:appbangiay/common/widgets/texts/section_heading.dart';
import 'package:appbangiay/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:appbangiay/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:appbangiay/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:appbangiay/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:appbangiay/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:appbangiay/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=HHelperFunctions.isDarkMode(context);
    return  Scaffold(
      bottomNavigationBar:const HBottomAddToCart() ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //1 product images slider 
          const HProductImageSlider(),
          
          //2 product details
          Padding(
            padding: const EdgeInsets.only(right: HSizes.defaultSpace,left: HSizes.defaultSpace,bottom: HSizes.defaultSpace),
            child: Column(
              children: [
                //ratting va share 
                const HRatingAndShare(),

                // price title,stock va brand
                const HProductMetaData(),

                
                const HSectionHeading(title: 'Thông số',showActionButton: false,),
                const SizedBox(height: HSizes.spaceBtwItems),
                const ReadMoreText(
                  '-Dáng regular fit\n-Không dây\n-Thân giày HybridTouch 2.0 với các chi tiết Strikeskin\n-Cổ giày adidas PRIMEKNIT\n-Đế ngoài Controlframe 2.0 phù hợp với sân cỏ tự nhiên',
                  
                ),

                const HProductAttributes(),
                const SizedBox(height: HSizes.spaceBtwSections),

                
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, 
                child: const Text('Thêm vào giỏ hàng'), style:  ButtonStyle(backgroundColor: MaterialStateProperty.all(HColors.primary)))),
                const SizedBox(height: HSizes.spaceBtwSections),

                // description

                // reviews
                const Divider(),
                const SizedBox(height: HSizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const HSectionHeading(title: 'Reviews(199)',showActionButton: false),
                    IconButton(icon: const Icon(Iconsax.arrow_right_3,size: 18),onPressed: () => Get.to(()=>const ProductReviewScreen())),
                  ],
                ),
          
              ],
            ),
           ),
          ],
        ),
      ),
    );
  }
}

