import 'package:appbangiay/common/widgets/texts/h_brand_title_text.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/enums.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HBrandTitleWithVerifiedIcon extends StatelessWidget {
  const HBrandTitleWithVerifiedIcon({
    super.key, 
    required this.title, 
    this.maxLines=1, 
    this.textColor, 
    this.iconColor=HColors.primary,
     this.textAlign=TextAlign.center, 
    this.brandTextSize=TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
     children: [
      Flexible(
        child: HBrandTitleText(
          title: title,
          color: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          brandTextSize: brandTextSize,
        ),
        ),
        const SizedBox(width: HSizes.xs),
        Icon(Iconsax.verify5,color: iconColor,size: HSizes.inconXs),
     ],
    );
  }
}