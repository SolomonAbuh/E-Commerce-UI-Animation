import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../constants/app_assets.dart';
import 'app_spacer.dart';

AppBar productDetailsAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.black),
    elevation: 0,
    actions: [
      const Icon(Icons.favorite_outline_rounded),
      spaceH(4.w),
      const Icon(Icons.share),
      spaceH(4.w),
      SvgPicture.asset(AppAssets.shoppingBagIcon),
      spaceH(4.w),
    ],
  );
}
