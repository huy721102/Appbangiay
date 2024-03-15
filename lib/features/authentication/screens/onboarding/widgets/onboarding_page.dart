import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.additionalImage,
  }) : super(key: key);

  final String image, title, subTitle, additionalImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(HSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Image(
              width: HHelperFunctions.screenWidth() * 0.8,
              height: HHelperFunctions.screenHeight() * 0.6,
              image: AssetImage(image),
            ),
          ),
          SizedBox(height: HSizes.spaceBtwItems), // Add space between image and title
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: HSizes.spaceBtwItems), // Add space between title and subTitle
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: HSizes.spaceBtwItems), // Add space between subTitle and additionalImage
          Expanded(
            flex: 1,
            child: Image(
              width: HHelperFunctions.screenWidth() * 0.4, // Adjust width as needed
              height: HHelperFunctions.screenHeight() * 0.4, // Adjust height as needed
              image: AssetImage(additionalImage),
            ),
          ),
        ],
      ),
    );
  }
}
