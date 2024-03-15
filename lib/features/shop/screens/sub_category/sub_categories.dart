import 'package:appbangiay/common/widgets/appbar/appbar.dart';
import 'package:appbangiay/common/widgets/images/h_rounded_image.dart';
import 'package:appbangiay/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:appbangiay/common/widgets/texts/section_heading.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const HAppBar(title: Text('sports '),showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(HSizes.defaultSpace),
          child: Column(
            children: [
              //banner
              const HRoundedImage(width: double.infinity,imageUrl: HImages.banner4,applyImageRadius: true),
              const SizedBox(height: HSizes.spaceBtwSections),

              // sub - categories
              Column(
                children: [
                  //heading
                  HSectionHeading(title: 'sports shirts',onPressed: (){}),
                  const SizedBox(height: HSizes.spaceBtwItems / 2),

                  //
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(width: HSizes.spaceBtwItems),
                      itemBuilder:(context, index) => const HProductCardHorizontal(),
                      ),
                  ),
                ],
              ),
            ],
          ),
          ),
      ),
    );
  }
}