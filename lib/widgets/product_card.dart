import 'package:flutter/material.dart';
import 'package:money_point_take_home_assignment/constants/text_styles.dart';
import 'package:sizer/sizer.dart';

import 'package:money_point_take_home_assignment/widgets/app_spacer.dart';

import '../constants/colors.dart';
import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final VoidCallback onTap;
  final ProductModel model;
  const ProductCard({
    Key? key,
    required this.onTap,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 35.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.06),
                blurRadius: 10,
                offset: const Offset(0, 10)),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.5.h),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 15.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Image.asset(
                        model.images[0],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              spaceV(0.5.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  model.productCategory,
                  style: TextStyle(fontSize: 8.sp, color: AppColors.greyLight),
                ),
              ),
              spaceV(0.5.h),
              Text(
                model.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.verySmallText
                    .copyWith(fontWeight: FontWeight.w600, height: 1.5),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: Colors.amber,
                        size: 16.sp,
                      ),
                      spaceH(0.5.w),
                      Text(
                        '${model.rating} | 2,302',
                        style: AppTextStyles.verySmallTextLight,
                      )
                    ],
                  ),
                  Text(
                    '\$${model.price}',
                    style: AppTextStyles.mediumText.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
