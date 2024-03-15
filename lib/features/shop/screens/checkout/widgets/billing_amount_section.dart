import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HBillingAmountSection extends StatelessWidget {
  const HBillingAmountSection ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
       children: [
        //subtotal
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Giá tiền',style: Theme.of(context).textTheme.bodyMedium),
            Text('1.999.999',style: Theme.of(context).textTheme.labelLarge),
          ],
         ),
         const SizedBox(height: HSizes.spaceBtwItems / 2),
         //shipping fee
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Thuế',style: Theme.of(context).textTheme.bodyMedium),
            Text('10.000',style: Theme.of(context).textTheme.labelLarge),
          ],
         ),
         const SizedBox(height: HSizes.spaceBtwItems / 2),

         //Tax free
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Phí vận chuyển',style: Theme.of(context).textTheme.bodyMedium),
            Text('20.000',style: Theme.of(context).textTheme.labelLarge),
          ],
         ),
         const SizedBox(height: HSizes.spaceBtwItems / 2),

         //order total
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tổng tiền',style: Theme.of(context).textTheme.headlineSmall),
            Text('2.029.999',style: Theme.of(context).textTheme.headlineSmall),
          ],
         )
       ],
    );
  }
}