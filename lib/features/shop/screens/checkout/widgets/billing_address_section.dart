import 'package:appbangiay/common/widgets/texts/section_heading.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HBillingAddressSection extends StatelessWidget {
  const HBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       HSectionHeading(title: 'Địa chỉ nhận hàng',buttonTitle: 'change',onPressed: (){}),
       Text('Nguyễn Phan Tấn Huy',style: Theme.of(context).textTheme.bodyLarge),
       const SizedBox(height: HSizes.spaceBtwItems / 2),
       Row(
        children: [
          const Icon(Icons.phone,color: Colors.grey,size: 16),
          const SizedBox(width: HSizes.spaceBtwItems),
          Text('125678768686',style: Theme.of(context).textTheme.bodyMedium),
        ],
       ),
       const SizedBox(height: HSizes.spaceBtwItems / 2),

              Row(
        children: [
          const Icon(Icons.location_history,color: Colors.grey,size: 16),
          const SizedBox(width: HSizes.spaceBtwItems),
          Text('viet nam',style: Theme.of(context).textTheme.bodyMedium,softWrap: true),
        ],
       ),
      ],
    );
  }
}