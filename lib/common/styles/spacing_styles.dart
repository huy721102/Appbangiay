import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppBarHeight=EdgeInsets.only(
    top: HSizes.appBarHeight,
    left: HSizes.defaultSpace,
    bottom: HSizes.defaultSpace,
    right: HSizes.defaultSpace,
  );
}