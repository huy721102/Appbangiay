import 'package:appbangiay/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=OnBoardingController.instance;
    final dark= HHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: HDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: HSizes.spaceBtwSections * 4.5,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
      effect:  ExpandingDotsEffect(activeDotColor: dark ? HColors.primary: HColors.primary,dotHeight: 6),
      ),
      );
  }
}