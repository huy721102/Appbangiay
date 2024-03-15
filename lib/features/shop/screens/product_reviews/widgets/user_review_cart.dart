import 'package:appbangiay/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:appbangiay/common/widgets/products/ratings/rating_indicator.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark =HHelperFunctions.isDarkMode(context);
    return Column(
      children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                 const CircleAvatar(backgroundImage: AssetImage(HImages.userProfileImage1)),
                  const SizedBox(width: HSizes.spaceBtwItems),
                  Text('John Doe',style: Theme.of(context).textTheme.titleLarge),
                ],
              ),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)), 
            ],
          ),

          const SizedBox(height: HSizes.spaceBtwItems),

          //review
          Row(
            children: [
              const HRatingBarIndicator(rating: 4),
               const SizedBox(width: HSizes.spaceBtwItems),
              Text('01 nov, 2024',style:Theme.of(context).textTheme.bodyMedium),
            ],
          ),
          const SizedBox(height: HSizes.spaceBtwItems),
          const ReadMoreText(
            "san pham siu tuyet voi asda avvas asfasfa babasda aasabsa reyry saads 123123 vadvas yerry dsaasd gassd asdrqqwr cascjoiqeu qd143.",
            trimLines: 1,
            trimMode: TrimMode.Line,
            trimExpandedText: 'show less',
            trimCollapsedText: 'show more',
             moreStyle:  TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: HColors.primary),
             lessStyle:  TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: HColors.primary),
            ),
            const SizedBox(height: HSizes.spaceBtwItems),

            // company review
            HRoundedContainer(
              backgroundColor: dark ? HColors.darkerGrey : HColors.grey,
              child: Padding(
                padding: const EdgeInsets.all(HSizes.md),
                child: Column(
                  children: [ 
                    Row(
                      mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                      children: [
                        Text("H's Store",style: Theme.of(context).textTheme.titleMedium),
                        Text("02 Nov,2024",style: Theme.of(context).textTheme.bodyMedium),
                      ],
                    ),

                    const ReadMoreText(
                    "san pham siu tuyet voi asda avvas asfasfa babasda aasabsa reyry saads 123123 vadvas yerry dsaasd gassd asdrqqwr cascjoiqeu qd143.",
                    trimLines: 1,
                    trimMode: TrimMode.Line,
                    trimExpandedText: 'show less',
                    trimCollapsedText: 'show more',
                    moreStyle:  TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: HColors.primary),
                    lessStyle:  TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: HColors.primary),
                   ),
                  ],
                ),
                ),
            ),
          const SizedBox(height: HSizes.spaceBtwSections),
      ],
    );
  }
}