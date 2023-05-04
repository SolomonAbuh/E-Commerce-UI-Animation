import 'package:flutter/material.dart';
import 'package:money_point_take_home_assignment/widgets/app_spacer.dart';
import 'package:sizer/sizer.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
  Text('Description: ',style: TextStyle(fontSize: 14.sp,),),
        spaceV(3.h),
        Padding(
          padding: EdgeInsets.only(left: 5.w),
          child: const Text(
            'midnight blue'
            '\n• logo patch to the front'
            '\n• embroidered logo at the chest'
            '\n• logo patch to the rear'
            '\n• sailor collar'
            '\n• front press-stud fastening'
            '\n• two front jetted pockets'
            '\n• long sleeves'
            '\n• ribbed cuffs and hem'
            '\n\n\n Chat us if there is anything you need to ask about the product :)',
          ),
        )
      ],
    );
  }
}
