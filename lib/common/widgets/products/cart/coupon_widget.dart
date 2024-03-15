import 'package:appbangiay/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class HCouponCode extends StatelessWidget {
  const HCouponCode({
    super.key,
     this.width,

  });
 final double? width;

  @override
  Widget build(BuildContext context) {
  final dark =HHelperFunctions.isDarkMode(context);
    return HRoundedContainer(
      width: 380,
      showBorder: true,
      backgroundColor: dark ? HColors.dark:HColors.white,
      padding: const EdgeInsets.only(top: HSizes.sm,bottom:HSizes.sm,right: HSizes.sm,left: HSizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Nhập mã khuyến mãi của bạn',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
    
          //button
          SizedBox(
              width: 80,
            child: ElevatedButton(
              onPressed: (){}, 
              style: ElevatedButton.styleFrom(
                foregroundColor: dark ? HColors.white.withOpacity(0.5) : HColors.white,
                backgroundColor: const Color.fromRGBO(255, 101, 36, 1),
                side: BorderSide(color: Colors.grey.withOpacity(0.1)),
              ),
              child: const Text('Apply')
            ),
          ),
        ],
      ),
    );
  }
}