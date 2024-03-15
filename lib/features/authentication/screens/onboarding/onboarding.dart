import 'package:appbangiay/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:appbangiay/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:appbangiay/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:appbangiay/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:appbangiay/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller= Get.put(OnBoardingController());
    return  Scaffold(
      body: Stack(
        children: [
          //horizontal scrollable pages chỉnh lại giao diện load ảnh
          
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: HImages.onBoardingImage1,
                title: HTexts.onBoardingTitle1,
                subTitle: HTexts.onBoardingSubTitle1, 
                additionalImage: HImages.logo2,
                ),
                OnBoardingPage(
                image: HImages.onBoardingImage2,
                title: HTexts.onBoardingTitle2,
                subTitle: HTexts.onBoardingSubTitle2, 
                 additionalImage: HImages.logo2,
                ),
                OnBoardingPage(
                image: HImages.onBoardingImage3,
                title: HTexts.onBoardingTitle3,
                subTitle: HTexts.onBoardingSubTitle3, 
                 additionalImage: HImages.logo2,
                ),
            ],
          ),

          //skip button
          const OnBoardingSkip(),

          //dot navigation smoothPageIndicator

          const OnBoardingDotNavigation(),

          //circular button
          const OnBoardingNextButton()
        ],
      ),
    ) ;
  }
}




