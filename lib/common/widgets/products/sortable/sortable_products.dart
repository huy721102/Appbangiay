import 'package:appbangiay/common/widgets/layouts/grid_layout.dart';
import 'package:appbangiay/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HSortableProducts extends StatelessWidget {
  const HSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column( 
      children: [
        //dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value){},
          items: ['name','higer price','lower price','sale','newest','popularity']
          .map((option) => DropdownMenuItem(value: option,child: Text(option)))
          .toList(),
          ),
          const SizedBox(height: HSizes.spaceBtwSections),
    
          //san pham
         HGridLayout(itemCount: 8, itemBuilder: (_, index) => const HProductCardVertical()),
      ],
    );
  }
}