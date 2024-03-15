import 'package:appbangiay/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:appbangiay/common/widgets/images/h_circular_image.dart';
import 'package:appbangiay/common/widgets/texts/h_brand_title_text_with_verified_icon.dart';
import 'package:appbangiay/common/widgets/texts/product_price_text.dart';
import 'package:appbangiay/common/widgets/texts/product_title_text.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/enums.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class HProductMetaData extends StatelessWidget {
  const HProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = HHelperFunctions.isDarkMode(context);
    return  const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //price va sales price
        
        HProductTitleText(title: 'Nike Air Zoom Pegasus'),
        SizedBox(height: HSizes.spaceBtwItems / 1.5),
        Row(
          children: [
           // sale tag
          
        HProductPriceText(price: '1.999.999',isLarge: true, ),
          ],
        ),
        
        //brands

     
          
       
          ],
        
      
    );
  }
}