import 'package:appbangiay/common/widgets/appbar/appbar.dart';
import 'package:appbangiay/common/widgets/appbar/tabbar.dart';
import 'package:appbangiay/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:appbangiay/common/widgets/layouts/grid_layout.dart';
import 'package:appbangiay/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:appbangiay/common/widgets/products/cart/brand_card.dart';
import 'package:appbangiay/common/widgets/texts/section_heading.dart';
import 'package:appbangiay/features/shop/screens/brand/all_brands.dart';
import 'package:appbangiay/features/shop/screens/store/widgets/category_tab.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 5,
      child: Scaffold(

      //appbar
        appBar: HAppBar(
          title: Text('Store',style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            HCartCounterIcon(onPressed: () {}, iconColor: HColors.black),// khuc nay co che them 
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled){
          return[
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: HHelperFunctions.isDarkMode(context) ? HColors.black:HColors.white,
              expandedHeight: 440,
      
              flexibleSpace:Padding(
                padding: const EdgeInsets.all(HSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
      
                    //search bar
                  const SizedBox(height: HSizes.spaceBtwItems),
                   const HSearchContainer(text:'tim kiem',showBorder: true,showaBackground: false,padding: EdgeInsets.zero),
                   const SizedBox(height: HSizes.spaceBtwSections),
      
                    // featured brands
                    HSectionHeading(title: 'featured brands',onPressed: () => Get.to(() => const AllBrandsScreen())),
                   const SizedBox(height: HSizes.spaceBtwItems / 1.5),
      
                    // brands grid nen coi lai cho nay
                     HGridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80, 
                      itemBuilder: (_, index){ 
                        //
                      return const HBrandCard(showBorder: true);
                 }),
                  ],
                ),
              ),
      
              //tabs
              bottom:  const HTabBar(
                tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
                ],
              ),
            ),
          ];
        }, 



        ///body
        body: const TabBarView(
          children: [ HCategoryTab(),HCategoryTab(),HCategoryTab(),HCategoryTab(), HCategoryTab()],
        ),
        ),
      ),
    );
  }
}

