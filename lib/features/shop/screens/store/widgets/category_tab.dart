import 'package:appbangiay/common/widgets/brands/brand_show_case.dart';
import 'package:appbangiay/common/widgets/layouts/grid_layout.dart';
import 'package:appbangiay/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:appbangiay/common/widgets/texts/section_heading.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HCategoryTab extends StatelessWidget {
  const HCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
     shrinkWrap: true,
     physics: const NeverScrollableScrollPhysics(),
      children: [
      Padding(
              padding: const EdgeInsets.all(HSizes.defaultSpace),
              child: Column(
                children: [
                  //brands //HBrandShowcase
                  const HBrandShowcase(images: [HImages.productImage3,HImages.productImage4,HImages.productImage5]),
                  const HBrandShowcase(images: [HImages.productImage3,HImages.productImage4,HImages.productImage5]),
                  const SizedBox(height: HSizes.spaceBtwItems),
      
                  //products
                  HSectionHeading(title: 'you make like',onPressed: () {}),
                  const SizedBox(height: HSizes.spaceBtwItems),
      
                  HGridLayout(itemCount: 4, itemBuilder: (_, index) => const HProductCardVertical()),
                  const SizedBox(height: HSizes.spaceBtwSections),
                ],
                ),
              ),
      ],
    );
  }
}