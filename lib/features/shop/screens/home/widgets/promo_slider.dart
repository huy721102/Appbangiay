import 'package:appbangiay/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:appbangiay/common/widgets/images/h_rounded_image.dart';
import 'package:appbangiay/features/shop/controllers/home_controller.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HPromoSlider extends StatelessWidget {
  const HPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index)
          ),
          items:banners.map((url) =>HRoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: HSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for(int i=0;i<banners.length;i++)
                 HCircularContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carousalCurrentIndex.value == i ? HColors.primary: HColors.grey,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}