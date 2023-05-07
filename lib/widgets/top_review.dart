import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

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
                  width: 40.w,
                  child: Text(
                    'Showing 3 out of 2.5k+ reviews',
                    style: AppTextStyles.smallTextLight,
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 5.h,
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: AppColors.greyLight,
                    ),
                    borderRadius: BorderRadius.circular(8)),
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
            ),
          ],
        )
      ],
    );
  }
}
