import 'package:appbangiay/common/widgets/images/h_rounded_image.dart';
import 'package:appbangiay/common/widgets/products/cart/add_remove_button.dart';
import 'package:appbangiay/common/widgets/texts/h_brand_title_text_with_verified_icon.dart';
import 'package:appbangiay/common/widgets/texts/product_title_text.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class HcartItem extends StatelessWidget {
  const HcartItem({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //image
        HRoundedImage(
          imageUrl: HImages.productImage1,
          width: 125,
           height: 125,
           padding: const EdgeInsets.all(HSizes.xl),
           backgroundColor: HHelperFunctions.isDarkMode(context)?HColors.darkerGrey:HColors.light,
          ),
          const SizedBox(width: HSizes.spaceBtwItems),
    
          //title,price va size
           Expanded(
             child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HBrandTitleWithVerifiedIcon(title: 'Nike'),
                const Flexible(child: HProductTitleText(title: 'Nike Air Jordan',maxLines: 1,)),
                // attributes
                Text.rich(
                  TextSpan(
                  children: [
                   TextSpan(text: 'Màu: ',style: Theme.of(context).textTheme.bodySmall),
                   TextSpan(text: 'Đỏ ',style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: 'Size ',style: Theme.of(context).textTheme.bodySmall,),  
                   TextSpan(text: '41 ',style: Theme.of(context).textTheme.bodyLarge),
                   
                  ],
                  ),
                ),
                 // Nút thêm/bớt
             const Padding(
                padding: EdgeInsets.only(top: HSizes.spaceBtnItems), // Thêm padding ở trên để tạo khoảng cách
                child: Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Nút thêm/bớt
                    HProductQuantityWithAddRemoveButton(),
                    // Thêm các widget khác nếu cần
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}