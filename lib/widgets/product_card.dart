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
            color: Colors.black.withOpacity(0.07),
            blurRadius: 10,
          ),
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
                  children: [],
                ),
                Text(
                  '\$ ${model.price}',
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
