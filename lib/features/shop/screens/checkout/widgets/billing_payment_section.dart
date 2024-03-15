import 'package:appbangiay/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:appbangiay/common/widgets/texts/section_heading.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class HBillingPaymentSection extends StatelessWidget {
  const HBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        HSectionHeading(title: 'Hình thức thanh toán',buttonTitle: 'Thay đổi',onPressed: (){}),
        const SizedBox(height: HSizes.spaceBtwItems /2),
        Row(
          children: [
            HRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor:dark ?HColors.light : HColors.white,
              padding: const EdgeInsets.all(HSizes.sm),
              child: const Image(image: AssetImage(HImages.paypal),fit: BoxFit.contain),
            ),
            const SizedBox(width: HSizes.spaceBtwItems / 2),
            Text('Thanh toán bằng PayPal',style: Theme.of(context).textTheme.bodyLarge), 
          ],
        )
      ],
    );
  }
}