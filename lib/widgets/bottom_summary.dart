import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../constants/app_assets.dart';
import '../constants/colors.dart';

class BottomSummary extends StatelessWidget {
  const BottomSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        height: 8.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.01),
              offset: const Offset(0, -8),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(''),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.1),
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 15.w,
                    height: 5.5.h,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                      ),
                    ),
                    child: Center(
                        child: SvgPicture.asset(
                      AppAssets.shoppingBagIcon,
                      color: Colors.white,
                    )),
                  ),
                  Container(
                    width: 25.w,
                    height: 5.5.h,
                    decoration: BoxDecoration(
                      color: AppColors.textColor,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Buy Now',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ).animate(delay: const Duration(milliseconds: 800)).scale(
                  duration: const Duration(
                    milliseconds: 500,
                  ),
                  curve: Curves.easeOut,
                ),
          ],
        ),
      ),
    );
  }
}
