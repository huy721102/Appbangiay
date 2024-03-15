import 'package:appbangiay/common/widgets/appbar/appbar.dart';
import 'package:appbangiay/common/widgets/brands/brand_card.dart';
import 'package:appbangiay/common/widgets/products/sortable/sortable_products.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
 
class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HAppBar(title: Text('nike')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(HSizes.defaultSpace),
          child: Column(
            children: [
              //brands detail
              HBrandCard(showBorder: true),
              SizedBox(height: HSizes.spaceBtwSections),

              HSortableProducts(), 
            ],
          ),
          ),
      ),
    );
  }
}