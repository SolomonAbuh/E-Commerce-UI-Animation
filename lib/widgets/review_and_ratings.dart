// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'package:money_point_take_home_assignment/models/product_model.dart';

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
                )
               ,spaceV(3.h),
               Row(children: [],)
              ],
            ),
            Expanded(
              child: Column(),
            )
          ],
        )
      ],
    );
  }
}
