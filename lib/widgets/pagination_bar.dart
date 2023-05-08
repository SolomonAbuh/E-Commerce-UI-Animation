import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';
import 'app_spacer.dart';

class PaginationBar extends StatelessWidget {
  const PaginationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(1.h),
          decoration: BoxDecoration(
              color: AppColors.greyLight.withOpacity(0.2),
              shape: BoxShape.circle),
          child: const Icon(Icons.chevron_left),
        ),
        spaceH(4.w),
        Text(
          '1',
          style: AppTextStyles.smallText,
        ),
        spaceH(4.w),
        Text(
          '2',
          style: AppTextStyles.smallText,
        ),
        spaceH(4.w),
        Text(
          '3',
          style: AppTextStyles.smallText,
        ),
        spaceH(4.w),
        Container(
          padding: EdgeInsets.all(1.h),
          decoration: BoxDecoration(
              color: AppColors.greyLight.withOpacity(0.2),
              shape: BoxShape.circle),
          child: const Icon(Icons.chevron_right),
        ),
        const Spacer(),
        Text(
          'See more',
          style: AppTextStyles.smallText
              .copyWith(color: AppColors.primary, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
