import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/device/device_utility.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HAppBar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPress,
    this.showBackArrow = false,
    });

    final Widget? title;
    final bool showBackArrow;
    final IconData? leadingIcon;
    final List<Widget>? actions;
    final VoidCallback? leadingOnPress;


  @override
  Widget build(BuildContext context) {
    final dark =HHelperFunctions.isDarkMode(context);
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: HSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow 
        ? IconButton(onPressed: ()=>Get.back(), icon: Icon(Iconsax.arrow_left, color: dark ? HColors.white:HColors.dark)) 
        : leadingIcon != null 
        ? IconButton(onPressed: leadingOnPress, icon: Icon(leadingIcon)) : null,
        title: title,
        actions: actions,
        ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(HDeviceUtils.getAppBarHeight());
}