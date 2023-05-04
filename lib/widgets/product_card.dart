import 'package:flutter/material.dart';
import 'package:money_point_take_home_assignment/widgets/app_spacer.dart';
import 'package:sizer/sizer.dart';

import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel model;
  const ProductCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 10,
              offset: Offset(0, 10)),
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
                    child: FadeInImage(
                      placeholder: MemoryImage(kTransparentImage),
                      image: AssetImage(
                        model.images[0],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            spaceV(2.h),
            Text(
              model.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 10.sp, fontWeight: FontWeight.w600, height: 1.5),
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
                      style: TextStyle(
                          fontSize: 10.sp, color: Colors.grey.shade400),
                    )
                  ],
                ),
                Text(
                  '\$${model.price}',
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.teal,
                      fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
