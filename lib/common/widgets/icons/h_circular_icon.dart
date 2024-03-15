import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class HCircularIcon extends StatelessWidget {

  //a custom circular icon widget with a background color
  //
  //properties are:
  //container [width],[height],&[backgroundcolor]
  //
  //icon's[size],[color]&[onpressed]
  const HCircularIcon({
    super.key, 
    this.width, 
    this.height, 
    this.size = HSizes.lg, 
    required this.icon, 
    this.color, 
    this.backgroundColor, 
    this.onPressed,
  });

  final double? width,height,size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor !=null
        ? backgroundColor!
        :HHelperFunctions.isDarkMode(context)
        ?HColors.black.withOpacity(0.9)
        :HColors.white.withOpacity(0.9),
      borderRadius: BorderRadius.circular(100),  
      ),
      child: IconButton(onPressed: onPressed,icon: Icon(icon, color: color, size: size)),
    );
  }
}