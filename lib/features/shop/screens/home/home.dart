import 'package:appbangiay/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:appbangiay/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:appbangiay/common/widgets/layouts/grid_layout.dart';
import 'package:appbangiay/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:appbangiay/common/widgets/texts/section_heading.dart';
import 'package:appbangiay/features/shop/screens/all_products/all_products.dart';
import 'package:appbangiay/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:appbangiay/features/shop/screens/home/widgets/home_categories.dart';
import 'package:appbangiay/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header 
          const HPrimaryHeaderContainer(
              child: Column(
                children: [
                  //AppBar
                    HHomeAppBar(),
                    SizedBox(height: HSizes.spaceBtwSections),

                  // searchbar tim kiem HSearchContainer
                    HSearchContainer(text: 'search in store'),
                    SizedBox(height: HSizes.spaceBtwSections), 

                  // categories 
                  Padding(padding: EdgeInsets.only(left: HSizes.defaultSpace),
                  child: Column(
                    children: [
                      
                      //heading
                        HSectionHeading(title: 'Popular Categories',showActionButton: false,textColor: Colors.white),
                        SizedBox(height: HSizes.spaceBtwItems), 

                       //categories 
                       HHomeCategories(),
                    ],
                  ),
                  ),

                   SizedBox(height: HSizes.spaceBtwSections),
                ],
              ),
              ),

              //body
              Padding(
               padding: const EdgeInsets.all(HSizes.defaultSpace),
               child: Column(
                children: [
                  //promo slider
                  const HPromoSlider(banners: [HImages.banner3,HImages.banner4,HImages.banner5]),
                  const SizedBox(height: HSizes.spaceBtwSections),

                  /// heading
                   HSectionHeading(title: 'Popular products',onPressed: () => Get.to(() =>const AllProducts())),
                  const SizedBox(height: HSizes.spaceBtwItems),

                  //popular products
                 HGridLayout(itemCount: 2 , itemBuilder: (_, index) => const HProductCardVertical()),
                 //itemCount cho nay chinh so luong san pham hien thi
                ],
               ),
              ),
          ],
        ),
      ),
    );
  }
}














