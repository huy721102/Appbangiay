import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/device/device_utility.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class HTabBar extends StatelessWidget implements PreferredSizeWidget {
  //
  const HTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? HColors.black:HColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: HColors.primary,
        labelColor: dark ? HColors.white:HColors.primary,
        unselectedLabelColor: HColors.darkGrey,
      ),
    );
  }
  
  @override
 Size get preferredSize => Size.fromHeight(HDeviceUtils.getAppBarHeight());
}