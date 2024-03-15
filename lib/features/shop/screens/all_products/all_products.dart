import 'package:appbangiay/common/widgets/appbar/appbar.dart';
import 'package:appbangiay/common/widgets/layouts/grid_layout.dart';
import 'package:appbangiay/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:appbangiay/common/widgets/products/sortable/sortable_products.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: HAppBar(title: Text('popular products'),showBackArrow: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(HSizes.defaultSpace),
        child: HSortableProducts(),
      ),
    );
  }
}

