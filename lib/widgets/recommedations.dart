import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:money_point_take_home_assignment/constants/text_styles.dart';
import 'package:money_point_take_home_assignment/data/local_data.dart';
import 'package:money_point_take_home_assignment/widgets/app_spacer.dart';
import 'package:money_point_take_home_assignment/widgets/product_card.dart';
import 'package:sizer/sizer.dart';

import '../constants/colors.dart';
import '../pages/product_details.screen.dart';

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
        spaceV(3.5.h),
        SizedBox(
          height: 30.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => SizedBox(
                  width: 50.w,
                  child: ProductCard(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProductDetailsScreen(model: productList[index]),
                          ),
                        );
                      },
                      model: productList[index])),
              separatorBuilder: (context, index) => spaceH(5.w),
              itemCount: productList.length),
        )
      ],
    );
  }
}
