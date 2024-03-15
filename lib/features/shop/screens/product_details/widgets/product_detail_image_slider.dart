import 'package:appbangiay/common/widgets/appbar/appbar.dart';
import 'package:appbangiay/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:appbangiay/common/widgets/icons/h_circular_icon.dart';
import 'package:appbangiay/common/widgets/images/h_rounded_image.dart';
import 'package:appbangiay/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HProductImageSlider extends StatelessWidget {
  const HProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark =HHelperFunctions.isDarkMode(context);
    
    return HCurvedEdgeWidget(
      child: Container(
        color: dark ? HColors.darkerGrey:HColors.light,
        child:  const Stack(
          children: [
            // main large image
            SizedBox(
              
              height: 400,
              child: Padding(
              padding: EdgeInsets.all(HSizes.productImageRadius * 2),
              child: Center(child: Image(image: AssetImage(HImages.productImage1)),)
              
              ,
            ),
            
            ),
          
             //image slider cho nay chinh hinh anh san pham
               const OnBoardingDotNavigation(),
    
             //appbar icon
             HAppBar(
              showBackArrow: true,
              actions: [ HCircularIcon(icon: Iconsax.heart5, color: Colors.red)],
              ),
                
          ],
        ),
      ),
      );
  }
}