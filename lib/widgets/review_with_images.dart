import 'package:flutter/material.dart';
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
          style: AppTextStyles.mediumText.copyWith(fontWeight: FontWeight.w600),
        ),
        spaceV(3.h),
        Row(
          children: List.generate(
              model.images.length,
              (index) => Expanded(
                    child: Row(
                      children: [
                      
                      ],
                    ),
                  )),
        )
      ],
    );
  }
}
