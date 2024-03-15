import 'package:appbangiay/common/widgets/products/cart/add_remove_button.dart';
import 'package:appbangiay/common/widgets/products/cart/cart_item.dart';
import 'package:appbangiay/common/widgets/texts/product_price_text.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HcartItems extends StatelessWidget {
  const HcartItems({
    super.key,
      this.showAddRemoveButtons = true,
    });

final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated( 
              shrinkWrap: true,
              separatorBuilder: (_, __) => const SizedBox(height: HSizes.spaceBtnItems), 
              itemCount: 2,
              itemBuilder: (_, index) =>   Container(
       
        padding: const EdgeInsets.all(15.0), 
        decoration: BoxDecoration(
          color: Colors.grey[200], // Đặt màu nền xám
          borderRadius: BorderRadius.circular(20.0), 
        ),
          child: Column(
                children: [
                  //cart items
                  const HcartItem() ,
                  if(showAddRemoveButtons) const SizedBox(height: HSizes.spaceBtnItems),

                  // add remove button row with total price
                  if(showAddRemoveButtons)
                  const Row( 
                    mainAxisAlignment: MainAxisAlignment. spaceEvenly,
                       children: [
                        Row(
                          children: [
                            // extra space
                           

                             //add remove buttons  
                 
                         ],
                  ),
                  //add remove buttons
                ],
              ),
          ],
        ),
      ),
    );
  }
}