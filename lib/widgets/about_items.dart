import 'package:flutter/material.dart';
import 'package:money_point_take_home_assignment/models/product_model.dart';
import 'package:sizer/sizer.dart';
import '../constants/text_styles.dart';
import 'app_spacer.dart';

class AboutItems extends StatelessWidget {
  final ProductModel model;
  const AboutItems({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Brand: ',
                    style: AppTextStyles.smallTextLight,
                  ),
                  Text(
                    'Palm Angels',
                    style: AppTextStyles.smallText
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              spaceV(3.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'color: ',
                    style: AppTextStyles.smallTextLight,
                  ),
                  Text(
                    model.productCategory,
                    style: AppTextStyles.smallText
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              spaceV(3.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Condition: ',
                    style: AppTextStyles.smallTextLight,
                  ),
                  Text(
                    'New',
                    style: AppTextStyles.smallText
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ),
        spaceH(10.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'color: ',
                    style: AppTextStyles.smallTextLight,
                  ),
                  Text(
                    'Red',
                    style: AppTextStyles.smallText
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              spaceV(3.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Material: ',
                    style: AppTextStyles.smallTextLight,
                  ),
                  Text(
                    'Cotton',
                    style: AppTextStyles.smallText
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              spaceV(3.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Heavy: ',
                    style: AppTextStyles.smallTextLight,
                  ),
                  Text(
                    '200g',
                    style: AppTextStyles.smallText
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
