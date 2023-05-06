// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'package:money_point_take_home_assignment/models/product_model.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';
import 'app_spacer.dart';

class ReviewAndRatings extends StatelessWidget {
  final ProductModel model;
  const ReviewAndRatings({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Review & Rating:',
          style: AppTextStyles.mediumText.copyWith(fontWeight: FontWeight.w600),
        ),
        spaceV(3.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '4.9',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w800,
                        fontSize: 40.sp,
                      ),
                    ),
                    Text(
                      '/ 5.0',
                      style: AppTextStyles.smallTextLight,
                    ),
                  ],
                ),
                spaceV(3.h),
                Row(
                  children: List.generate(
                    5,
                    (index) => const Icon(
                      Icons.star_rounded,
                      color: Colors.amber,
                    ),
                  ),
                ),
                spaceV(3.h),
                Text(
                  '2.9k + Reviews',
                  style: TextStyle(
                    color: AppColors.greyLight,
                  ),
                ),
              ],
            ),
            spaceH(8.w),
            Expanded(
              child: Column(
                children: List.generate(
                  5,
                  (index) => Padding(
                    padding: EdgeInsets.only(bottom: 1.h),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star_rounded,
                          color: Colors.amber,
                        ),
                        spaceH(2.w),
                        Expanded(
                          flex: 1,
                          child: Text(
                            (index - 5).toString().substring(1),
                          ),
                        ),
                        spaceH(2.w),
                        Expanded(
                          flex: 6,
                          child: Stack(
                            children: [
                              Container(
                                height: 1.h,
                                decoration: BoxDecoration(
                                    color: AppColors.greyLight.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              Container(
                                height: 1.h,
                                margin: EdgeInsets.only(right: (index * 9).w),
                                decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ],
                          ),
                        ),
                        spaceH(2.w),
                        Expanded(
                          flex: 1,
                          child: Text(
                            (index - 5).toString().substring(1) +
                                (index < 2 ? 'k' : ''),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
