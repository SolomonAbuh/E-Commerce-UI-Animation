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
                Text(
                  'Showing 3 out of 2.5k+ reviews',
                  style: AppTextStyles.smallTextLight,
                )
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 5.h,
                  width: 50.w,
                  color: Colors.white,
                  margin: const EdgeInsets.only(left: 13),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      focusColor: AppColors.white,
                      dropdownColor: AppColors.white,
                      value: 'Top 5',
                      items: ['Top 5', 'Top 10', 'Top 15'].map((String value) {
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
            ),
          ],
        )
      ],
    );
  }
}
