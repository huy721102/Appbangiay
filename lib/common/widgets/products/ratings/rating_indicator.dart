import 'package:appbangiay/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class HRatingBarIndicator extends StatelessWidget {
  const HRatingBarIndicator({
    super.key, required this.rating,
    });

    final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: HColors.grey,
      itemBuilder: (_, __) => const Icon(Iconsax.star1,color: HColors.primary),
    );
  }
}