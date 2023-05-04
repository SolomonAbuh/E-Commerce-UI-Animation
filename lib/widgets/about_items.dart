import 'package:flutter/material.dart';

import 'package:money_point_take_home_assignment/models/product_model.dart';
import 'package:sizer/sizer.dart';

import '../constants/colors.dart';
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
                    style:
                        TextStyle(fontSize: 12.sp, color: AppColors.greyLight),
                  ),
                  Text(
                    'Palm Angels',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              spaceV(3.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'color: ',
                    style:
                        TextStyle(fontSize: 12.sp, color: AppColors.greyLight),
                  ),
                  Text(
                    model.productCategory,
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              spaceV(3.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Condition: ',
                    style:
                        TextStyle(fontSize: 12.sp, color: AppColors.greyLight),
                  ),
                  Text(
                    'New',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
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
                    style:
                        TextStyle(fontSize: 12.sp, color: AppColors.greyLight),
                  ),
                  Text(
                    'Red',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              spaceV(3.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Material: ',
                    style:
                        TextStyle(fontSize: 12.sp, color: AppColors.greyLight),
                  ),
                  Text(
                    'Cotton',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              spaceV(3.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Heavy: ',
                    style:
                        TextStyle(fontSize: 12.sp, color: AppColors.greyLight),
                  ),
                  Text(
                    '200g',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
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
