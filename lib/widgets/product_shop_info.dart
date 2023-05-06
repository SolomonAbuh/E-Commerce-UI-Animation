import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:money_point_take_home_assignment/constants/app_assets.dart';
import 'package:money_point_take_home_assignment/constants/colors.dart';
import 'package:sizer/sizer.dart';

class ProductShopInfo extends StatelessWidget {
  const ProductShopInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: 10.h,
            width: 10.h,
            child: ClipOval(
              child: Image.asset(
                AppAssets.shopLogo,
                fit: BoxFit.cover,
              ),
            )),
        Column(
          children: [Text('')],
        )
      ],
    );
  }
}
