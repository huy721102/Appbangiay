import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class HCircularImage extends StatelessWidget {
  const HCircularImage({
    super.key, 
    this.fit = BoxFit.cover, 
    required this.image, 
   this.isNetworkImage=false, 
    this.overlayColor, 
    this.backgroundColor, 
     this.width=56, 
     this.height=56, 
     this.padding=HSizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width,height,padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        //if image background color is null then switch it to light and dark mode color design
        color:backgroundColor ?? (HHelperFunctions.isDarkMode(context)? HColors.black:HColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
          fit: fit,
          image: isNetworkImage ? NetworkImage(image):AssetImage(image) as ImageProvider,
          color: overlayColor,
        ),
      ),
    );
  }
}