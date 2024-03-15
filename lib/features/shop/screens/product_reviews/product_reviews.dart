import 'package:appbangiay/common/widgets/appbar/appbar.dart';
import 'package:appbangiay/common/widgets/products/ratings/rating_indicator.dart';
import 'package:appbangiay/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:appbangiay/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:appbangiay/features/shop/screens/product_reviews/widgets/user_review_cart.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //appbar
      appBar: const HAppBar(title: Text('Reviews va ratings'),showBackArrow: true,),

      //body
      body: SingleChildScrollView(
     child: Padding(
      padding: const EdgeInsets.all(HSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("ratings and reviews are verified and are from people who use the same type of device that you use."),
          const SizedBox(height: HSizes.spaceBtwItems),

          //overall product ratings 
          const HOverallProductRating(),
          const HRatingBarIndicator(rating: 3.5),
          Text("12,611",style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: HSizes.spaceBtwSections),

          //user Reviews List
          const UserReviewCard(),
          const UserReviewCard(),
           const UserReviewCard(),
           const UserReviewCard(),
        ],
      ),
      ),
      ),
    );
  }
}

