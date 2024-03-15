import 'package:appbangiay/common/widgets/appbar/appbar.dart';
import 'package:appbangiay/common/widgets/icons/h_circular_icon.dart';
import 'package:appbangiay/common/widgets/layouts/grid_layout.dart';
import 'package:appbangiay/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:appbangiay/features/shop/screens/home/home.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: HAppBar(
        title: Text('wishlist',style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          HCircularIcon(icon: Iconsax.add,onPressed: ()=>Get.to(const HomeScreen())),
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.all(HSizes.defaultSpace),
          child: Column(
            children: [HGridLayout(itemCount: 6, itemBuilder: (_, index) => const HProductCardVertical())],
          ),
        ),
      ),
    );
  }
}