import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:money_point_take_home_assignment/models/product_model.dart';
import 'package:sizer/sizer.dart';

import 'app_spacer.dart';

class ProductStats extends StatelessWidget {
  final ProductModel model;
  const ProductStats({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.star_rounded,
              color: Colors.amber,
              size: 16.sp,
            ),
            spaceH(2.w),
            Text(
              '${model.rating} Ratings',
              style: TextStyle(
                color: Colors.grey.shade500,
              ),
            )
          ],
        ),
        Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            color: Colors.grey.shade500,
            shape: BoxShape.circle,
          ),
        ),
        Text(
          '2.9k + Reviews',
          style: TextStyle(
            color: Colors.grey.shade500,
          ),
        ),
        Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            color: Colors.grey.shade500,
            shape: BoxShape.circle,
          ),
        ),
        Text(
          '2.3k + Sold',
          style: TextStyle(
            color: Colors.grey.shade500,
          ),
        ),
      ],
    );
  }
}
