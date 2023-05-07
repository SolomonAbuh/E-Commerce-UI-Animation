import 'package:flutter/material.dart';
import 'package:money_point_take_home_assignment/constants/colors.dart';
import 'package:money_point_take_home_assignment/models/product_model.dart';
import 'package:sizer/sizer.dart';

import '../constants/text_styles.dart';
import 'app_spacer.dart';

class ReviewWithImages extends StatelessWidget {
  final ProductModel model;
  const ReviewWithImages({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Review with images & videos:',
          style: AppTextStyles.mediumText.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        spaceV(3.h),
        SizedBox(
          height: 8.h,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    height: 8.h,
                    width: 8.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipRRect(
                      child: Image.asset(
                        model.images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 8.h,
                    width: 8.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black38,
                    ),
                    child: Center(
                      child: Text(
                        '132',
                        style: AppTextStyles.smallText.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
            separatorBuilder: (context, index) => spaceH(6.5.w),
            itemCount: model.images.length,
          ),
        ),
        spaceV(3.h),
      ],
    );
  }
}
