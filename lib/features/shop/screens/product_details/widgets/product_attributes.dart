import 'package:appbangiay/common/widgets/chips/choice_chip.dart';
import 'package:appbangiay/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:appbangiay/common/widgets/texts/product_price_text.dart';
import 'package:appbangiay/common/widgets/texts/product_title_text.dart';
import 'package:appbangiay/common/widgets/texts/section_heading.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class HProductAttributes extends StatelessWidget {
  const HProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);
    return  Column(
     children: [
      // selected attribute pricing và description
     
      const SizedBox(height: HSizes.spaceBtwItems),
Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HSectionHeading(title: 'Kích thước giày',showActionButton: false),
          const SizedBox(height: HSizes.spaceBtwItems / 2), 
         Wrap(
          spacing: 8,
          children: [
          HChoiceChip(text: '37',selected: true, onSelected: (value){}),
          HChoiceChip(text: '38',selected: false, onSelected: (value){}),
          HChoiceChip(text: '39',selected: false, onSelected: (value){}),
          HChoiceChip(text: '40',selected: false, onSelected: (value){}),
          HChoiceChip(text: '41',selected: false, onSelected: (value){}),

          ],
         ),
        ],
      ),
      //attributes CHỔ NÀY PHẢI VIẾT ĐÚNG TÊN
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HSectionHeading(title: 'Màu sắc',showActionButton: false ),
          const SizedBox(height: HSizes.spaceBtwItems), 
        Wrap(
          spacing: 8,
          children: [
          HChoiceChip(text: 'Black',selected: false, onSelected: (value){}),
          HChoiceChip(text: 'Grey',selected: true,onSelected: (value){}),
          HChoiceChip(text: 'Pink',selected: false,onSelected: (value){}),
          ],
        ),
        ],
      ),
       

     ],
    );
  }
}

