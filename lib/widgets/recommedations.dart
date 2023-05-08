import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:money_point_take_home_assignment/constants/text_styles.dart';
import 'package:money_point_take_home_assignment/widgets/app_spacer.dart';

import '../constants/colors.dart';

class Recomendations extends StatelessWidget {
  const Recomendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recommendation',
              style: AppTextStyles.mediumText
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            Text(
              'See more',
              style: AppTextStyles.smallText.copyWith(
                  color: AppColors.primary, fontWeight: FontWeight.w600),
            )
          ],
        ),
        spaceV(3.5.h),),
      ],
    );
  }
}
