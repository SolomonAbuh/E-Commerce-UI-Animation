import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:money_point_take_home_assignment/constants/app_assets.dart';
import 'package:money_point_take_home_assignment/constants/colors.dart';
import 'package:sizer/sizer.dart';

import '../constants/text_styles.dart';
import 'app_spacer.dart';

class ProductShopInfo extends StatelessWidget {
  const ProductShopInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Seller information:',
          style: AppTextStyles.mediumText.copyWith(fontWeight: FontWeight.w600),
        ),
        spaceV(3.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            spaceH(5.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shop_Pay',
                    style: AppTextStyles.mediumText
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  spaceV(1.h),
                  Wrap(
                    children: [
                      Text('Active 5 mins ago | ',
                          style: AppTextStyles.verySmallTextLight),
                      Text('96.7 positive feedback',
                          style: AppTextStyles.verySmallTextLight),
                    ],
                  ),
                  spaceV(1.h),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side:
                                BorderSide(color: AppColors.primary, width: 2),
                          )),
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [SvgPicture.asset(A)],
                      ))
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
