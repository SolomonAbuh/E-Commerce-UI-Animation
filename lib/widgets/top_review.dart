import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../constants/app_assets.dart';
import '../constants/colors.dart';
import '../constants/text_styles.dart';
import 'app_spacer.dart';

class TopReviews extends StatelessWidget {
  const TopReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Top Reviews:',
                  style: AppTextStyles.mediumText
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                spaceV(2.h),
                SizedBox(
                  width: 35.w,
                  child: Text(
                    'Showing 3 out of 2.5k+ reviews',
                    style: AppTextStyles.smallTextLight,
                  ),
                )
              ],
            ),
            Container(
              height: 5.h,
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: AppColors.greyLight,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  focusColor: AppColors.white,
                  dropdownColor: AppColors.white,
                  value: 'Popular',
                  items: [
                    'Popular',
                    'Recently posted',
                    'Top rated',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {},
                  style: AppTextStyles.smallText,
                ),
              ),
            ),
            spaceV(3.h),
          ],
        ),
        spaceV(3.h),
        Column(
          children: List.generate(
            5,
            (index) => Column(
              children: [
                Container(
                  height: 30.h,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 5.h,
                                width: 5.h,
                                child: ClipOval(
                                    child: Image.asset(
                                  AppAssets.shopLogo,
                                  fit: BoxFit.cover,
                                )),
                              ),
                              spaceH(2.w),
                              Text('Solomon Abuh ****')
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: Colors.amber,
                              ),
                              spaceH(3.w),
                              Text(
                                '5.0',
                                style: AppTextStyles.smallText.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              spaceH(3.w),
                              Icon(
                                Icons.more_horiz,
                                color: AppColors.greyLight,
                              )
                            ],
                          ),
                        ],
                      ),
                      spaceV(1.h),
                      SizedBox(
                          height: 5.h,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Chip(
                                label: Text(
                                  'Very fast delivery',
                                  style: TextStyle(
                                    fontSize: 8.sp,
                                    color: AppColors.primary,
                                  ),
                                ),
                                backgroundColor: Colors.teal.shade50,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                    color: AppColors.primary,
                                  ),
                                ),
                              ),
                              spaceH(4.w),
                              Chip(
                                label: Text(
                                  'Packaged properly',
                                  style: TextStyle(
                                    fontSize: 8.sp,
                                    color: AppColors.primary,
                                  ),
                                ),
                                backgroundColor: Colors.teal.shade50,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                    color: AppColors.primary,
                                  ),
                                ),
                              ),
                              spaceH(4.w),
                              Chip(
                                label: Text(
                                  'Product in good condition',
                                  style: TextStyle(
                                    fontSize: 8.sp,
                                    color: AppColors.primary,
                                  ),
                                ),
                                backgroundColor: Colors.teal.shade50,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                    color: AppColors.primary,
                                  ),
                                ),
                              ),
                            ],
                          )),
                      spaceV(3.h),
                      Text(
                        'According to my expectations. This is the best.\nThank you',
                        style: AppTextStyles.smallText.copyWith(),
                      )
                    ],
                  ),
                ),
                spaceV(2.h),
              ],
            ),
          ),
        )
      ],
    );
  }
}
