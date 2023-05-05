import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'app_spacer.dart';

class ProductShippingInfo extends StatelessWidget {
  const ProductShippingInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Shipping information ',
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
        ),
        spaceV(2.h),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Delivery:',
              style: TextStyle(fontSize: 12.sp, color: Colors.grey.shade500),
            ),
            spaceH(3.w),
            Text(
              'Shipping from Abuja, Nigeria',
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        spaceV(2.h),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Delivery:',
              style: TextStyle(fontSize: 12.sp, color: Colors.grey.shade500),
            ),
            spaceH(3.w),
            Text(
              'FREE International Shipping',
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        spaceV(2.h),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Arrive:',
              style: TextStyle(fontSize: 12.sp, color: Colors.grey.shade500),
            ),
            spaceH(3.w),
            Text(
              'Estimated to arrive on 25-04-2023',
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        spaceV(3.h),
      ],
    );
  }
}
