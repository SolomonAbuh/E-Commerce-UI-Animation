import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/text_styles.dart';
import 'app_spacer.dart';

class ReviewAndRatings extends StatelessWidget {
  const ReviewAndRatings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Review & ',
          style: AppTextStyles.mediumText.copyWith(fontWeight: FontWeight.w600),
        ),
        spaceV(3.h),
      ],
    );
  }
}
